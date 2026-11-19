---
title: Interoperability Run IG - Architecture (modelling decisions)
status: draft (records decisions taken in v0.1; changes need the IG editor's approval)
created: 2026-11-19
updated: 2026-11-19
---

# Interoperability Run IG - Architecture

## Package and versions
- FHIR R4 4.0.1; SUSHI 3.x; IG Publisher via `_genonce.sh` / HL7 auto-build.
- Dependency: `hl7.fhir.eu.base` 2.0.1.
- Canonical: `https://example.org/ig/interoperabilityrun` (training placeholder); id `org.fhir.eu.interoperabilityrun`.

## Decisions (ADR-style)
| # | Decision | Reason |
|---|---|---|
| D1 | Runner inherits from EU `patient-eu-core` | Training goal: build on the HL7 Europe base profiles |
| D2 | Heart rate and SpO2 inherit from FHIR core vital-signs profiles (`heartrate`, `oxygensat`) | The EU base package has no vital-sign profiles; FHIR requires the vital-signs profiles for these measurements |
| D3 | ECG as Observation with one component per lead, SampledData values, MDC lead codes | Common FHIR pattern for waveforms (cf. the FHIR R4 `ekg` example) |
| D4 | One extension `IRunContext` (eventType, eventName, phase, location) on all observations | Keeps event metadata uniform and searchable |
| D5 | Environmental conditions use the course (Location) as subject | Conditions belong to the place, not a person |
| D6 | Local CodeSystems for run-specific concepts (event type, phase, exercise codes) | Avoid unverified standard codes; replace where good matches exist (#19) |
| D7 | Participant report is a DiagnosticReport referencing the observations | Standard way to group results with a conclusion |

## Conventions
- Profile names `IRun<Concept>`, ids `irun-<concept>`; one FSH file per kind (`aliases`, `profiles`, `extensions`, `terminology`, `examples`).
- Every profile has at least one example; examples are fictional and say so.
- Pages in `input/pagecontent/` start at heading level `###`.
- External codes are looked up (tx.fhir.org or the specification) and listed on the Implementation page.

## Quality gate (definition of done)
See `CLAUDE.md` at the repository root.
