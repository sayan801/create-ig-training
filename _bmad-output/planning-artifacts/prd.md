---
title: Interoperability Run IG - Requirements (PRD)
status: draft (retroactive for v0.1; to be validated by the IG editor with `bmad-prd`)
created: 2026-11-19
updated: 2026-11-19
---

# Interoperability Run IG - Requirements

Source brief: `product-brief.md`. Modelling decisions are made by the IG editor; agents implement them.

## Functional requirements
| ID | Requirement | Artifact | Status |
|---|---|---|---|
| FR1 | Identify a participant by bib number, with name and birth date (EU base) | `IRunRunner` | done (#3) |
| FR2 | Describe the wearable that produced a measurement | `IRunWearableDevice` | done (#4) |
| FR3 | Record heart rate before, during and after the run | `IRunHeartRate` | done (#5) |
| FR4 | Record SpO2 | `IRunOxygenSaturation` | done (#6) |
| FR5 | Record a single- or multi-lead ECG waveform | `IRunECG` | done (#7) |
| FR6 | Link every observation to event type, event name, phase and location | `IRunContext` + terminology | done (#8) |
| FR7 | Summarise a run or swim session: place, duration, distance, pace | `IRunExerciseSession` | done (#9) |
| FR8 | Describe the course / meeting point | `IRunLocation` | done (#10) |
| FR9 | Schedule the run | `IRunAppointment` | done (#11) |
| FR10 | Plan a preventive check-up around the run | `IRunPreventiveCarePlan` | done (#12) |
| FR11 | Record air temperature, humidity and water temperature at the course | `IRunEnvironmentConditions` | done (#13) |
| FR12 | Produce a participant report bringing all results together | `IRunReport` | done (#14) |

## Non-functional requirements
| ID | Requirement | Status |
|---|---|---|
| NFR1 | FHIR R4 (4.0.1); depends on `hl7.fhir.eu.base` 2.0.1 | done |
| NFR2 | SUSHI: 0 errors, 0 warnings | done |
| NFR3 | IG Publisher QA: 0 errors; warnings justified | open (#16) |
| NFR4 | External codes verified, never taken from memory | done (#15) |
| NFR5 | Examples validated by an independent validator (Matchbox) | open (#17) |
| NFR6 | Transparent development record (prompts, tools, reviewers) | open (#18) |
| NFR7 | Prefer standard codes over local codes | open (#19) |
| NFR8 | No real personal data; examples marked fictional / not for clinical use | done |

## Next increment (v0.2 candidates, to be decided by the editor)
- Standard codes (#19)
- Optional: steps / cadence, GPS start-finish points, Bundle / transaction example for a Connectathon client
