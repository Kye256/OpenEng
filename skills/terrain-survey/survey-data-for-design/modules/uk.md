# Survey Data for Design -- UK Module

> **Parent Skill:** #12 Survey Data for Design
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB (general survey guidance); Ordnance Survey data standards
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB (various) | Current | Survey requirements referenced in scheme-specific documents | Current |
| Ordnance Survey standards | Current | Coordinate system, datum, mapping | Current |

### M.1.2 Institutional Context

UK road design surveys follow DMRB guidance supplemented by project-specific survey specifications. Ordnance Survey (OS) provides the national mapping and coordinate framework.

Key differences from the MoWT approach:
- UK uses OS National Grid (OSGB36) for horizontal coordinates and Ordnance Datum Newlyn (ODN) for vertical levels.
- High-quality OS mapping (MasterMap, terrain data) is often available as a baseline, supplemented by project-specific topographic survey.
- Network survey data from the Highways England (National Highways) road condition surveys may be available for existing trunk roads.

---

## M.2 Country-Specific Knowledge

### M.2.1 UK Survey Framework

**Coordinate system:** OS National Grid (OSGB36). Eastings and Northings in metres.

**Vertical datum:** Ordnance Datum Newlyn (ODN). Heights in metres above mean sea level at Newlyn, Cornwall.

**Available baseline data:**
- OS MasterMap Topography Layer: detailed vector mapping of features
- OS Terrain 5 / OS Terrain 50: DTM data at 5 m or 50 m resolution (post spacing)
- LiDAR data: Environment Agency open data LiDAR covering much of England at 1 m or 2 m resolution
- Network survey data: existing road condition and geometry data for trunk roads

**Project-specific survey:** For road improvement schemes, a full topographic survey is typically commissioned to supplement OS data. This includes feature survey, levels, and cross-sections at the required intervals.

**Gap flag:** Specific DMRB survey specification documents are not available locally. The above is drafted from general UK survey practice knowledge.

*(Drafted from general DMRB knowledge -- verify against project-specific survey specifications before use in production)*

---

## M.8 References

1. Ordnance Survey, *OS National Grid and coordinate systems documentation*.
2. Highways England (National Highways), project-specific survey specifications (vary by scheme).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- notes UK coordinate system and available data sources |
