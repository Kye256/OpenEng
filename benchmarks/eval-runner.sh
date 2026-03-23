#!/usr/bin/env bash
# eval-runner.sh -- OpenEng Skills Library Evaluation Runner
#
# Purpose: Run automated self-evaluation of all 65 skills across 13 domains.
# Reads evals.json from each skill directory and generates benchmark results.
#
# Usage:
#   ./benchmarks/eval-runner.sh [--domain DOMAIN] [--skill SKILL_SLUG]
#
# Options:
#   --domain DOMAIN       Run evals for a single domain only (e.g., traffic-engineering)
#   --skill SKILL_SLUG    Run evals for a single skill only (e.g., traffic-survey-design)
#   --manifest            Print manifest of all skills and exit
#   --help                Show this help message
#
# Requires: python3, jq (optional, for JSON parsing)
#
# Output: Results printed to stdout in markdown table format.
#         Redirect to benchmarks/benchmark-results.md or integrate into report.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SKILLS_DIR="$PROJECT_ROOT/skills"
RESULTS_FILE="$PROJECT_ROOT/benchmarks/benchmark-results.md"

# Domain order matching benchmark-results.md table
DOMAINS=(
    "traffic-engineering"
    "geotechnical"
    "terrain-survey"
    "geometric-design"
    "pavement-design"
    "earthworks"
    "drainage"
    "structures"
    "professional-practice"
    "cost-estimation"
    "asset-management"
    "planning-safety"
    "integration"
)

# Parse arguments
RUN_DOMAIN=""
RUN_SKILL=""
MANIFEST_ONLY=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --domain)
            RUN_DOMAIN="$2"
            shift 2
            ;;
        --skill)
            RUN_SKILL="$2"
            shift 2
            ;;
        --manifest)
            MANIFEST_ONLY=true
            shift
            ;;
        --help)
            head -20 "$0" | tail -15
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Generate manifest
echo "=== OpenEng Skills Library Eval Manifest ==="
echo ""
echo "Domain | Skill | Scenarios | Assertions"
echo "-------|-------|-----------|----------"

TOTAL_SKILLS=0
TOTAL_SCENARIOS=0
TOTAL_ASSERTIONS=0

for domain in "${DOMAINS[@]}"; do
    if [[ -n "$RUN_DOMAIN" && "$domain" != "$RUN_DOMAIN" ]]; then
        continue
    fi
    for eval_file in "$SKILLS_DIR/$domain"/*/evals/evals.json; do
        if [[ ! -f "$eval_file" ]]; then
            continue
        fi
        skill_slug=$(echo "$eval_file" | sed "s|.*/skills/$domain/\([^/]*\)/evals/evals.json|\1|")
        if [[ -n "$RUN_SKILL" && "$skill_slug" != "$RUN_SKILL" ]]; then
            continue
        fi

        scenarios=$(python3 -c "import json; d=json.load(open('$eval_file')); print(len(d['evals']))")
        assertions=$(python3 -c "import json; d=json.load(open('$eval_file')); print(sum(len(e['assertions']) for e in d['evals']))")

        echo "$domain | $skill_slug | $scenarios | $assertions"
        TOTAL_SKILLS=$((TOTAL_SKILLS + 1))
        TOTAL_SCENARIOS=$((TOTAL_SCENARIOS + scenarios))
        TOTAL_ASSERTIONS=$((TOTAL_ASSERTIONS + assertions))
    done
done

echo ""
echo "Total: $TOTAL_SKILLS skills | $TOTAL_SCENARIOS scenarios | $TOTAL_ASSERTIONS assertions"

if $MANIFEST_ONLY; then
    exit 0
fi

echo ""
echo "=== Evaluation Procedure ==="
echo ""
echo "To run the full evaluation:"
echo "1. For each skill, load SKILL.md + modules/ + tables/ into Claude"
echo "2. Present each eval scenario prompt from evals.json"
echo "3. Generate a response and self-evaluate each assertion"
echo "4. Record results in benchmarks/benchmark-results.md"
echo ""
echo "Note: This script generates the manifest and provides the framework."
echo "Actual evaluation requires Claude context loading and is performed"
echo "by the eval execution plan (06-06-PLAN.md)."
