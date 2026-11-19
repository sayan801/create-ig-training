---
title: Interoperability Run IG - Product brief
status: draft (written retroactively from the v0.1 work; to be validated by the IG editor with `bmad-product-brief` in Validate mode)
created: 2026-11-19
updated: 2026-11-19
---

# Interoperability Run IG - Product brief

## Problem
At FHIR community events (HL7 Working Group Meetings, Connectathons, DevDays) many participants join an early-morning **Interoperability Run**. Most wear devices (smartwatch, chest strap, pulse oximeter) that record vital signs, but the data stay locked in each vendor's app. There is no shared, FHIR-based way to pool, compare and show those measurements per event.

## Purpose
1. A **fun, realistic training IG**: show how to build an IG with FSH, SUSHI and the IG Publisher on top of the **HL7 Europe base profiles**, and how to maintain it with AI agents and human review.
2. A **Connectathon-ready data model** for wearable vital signs, run sessions and conditions at community events.

## Users
| User | Need |
|---|---|
| Runner / swimmer (event participant) | Share their measurements with consent; see a personal report |
| Event organiser | Collect and show aggregated results per event |
| Implementer (Connectathon participant) | Clear profiles and examples to build a client, a server or a dashboard |
| IG editor | Make modelling decisions; review agent work |

## Scope (v0.1, built)
Runner, wearable device, heart rate, SpO2, ECG, run context (event, phase, location), exercise session (run / swim: place, duration, distance, pace), location, appointment, preventive care plan, environmental conditions (air and water temperature, humidity), participant report.

## Out of scope
Clinical interpretation or diagnosis; full GPS tracks; device certification; real personal data (all examples are fictional).

## Success criteria
- IG Publisher QA: 0 errors; every warning justified
- Every profile has at least one valid example
- Every external code verified against a terminology server or the specification
- At least one Connectathon track or event demo uses it
- Community feedback is captured as issues and answered within one iteration

## Open questions
- Standard codes (LOINC / SNOMED CT) for the concepts that use local codes today (issue #19)
- Consent and pseudonymisation model for event dashboards
- Canonical URL and publisher once the IG is used beyond training (currently `https://example.org/ig/interoperabilityrun`)
