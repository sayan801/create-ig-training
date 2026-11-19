# Implementation - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation**

## Implementation

### Profiles

| | | |
| :--- | :--- | :--- |
| [IRunRunner](StructureDefinition-irun-runner.md) | HL7 Europe`patient-eu-core` | identifier (bib number) 1..*, name and birthDate required (from EU core) |
| [IRunWearableDevice](StructureDefinition-irun-wearable-device.md) | Device | deviceName, type and patient required |
| [IRunHeartRate](StructureDefinition-irun-heart-rate.md) | FHIR core`heartrate`(vital signs) | LOINC 8867-4, unit`/min`, run context, device required |
| [IRunOxygenSaturation](StructureDefinition-irun-oxygen-saturation.md) | FHIR core`oxygensat`(vital signs) | LOINC 2708-6, unit`%`, run context, device required |
| [IRunECG](StructureDefinition-irun-ecg.md) | Observation | LOINC 11524-6, one component per lead with an MDC code and SampledData waveform |
| [IRunExerciseSession](StructureDefinition-irun-exercise-session.md) | Observation | category`activity`; effectivePeriod required; code = run or swim session; components duration (LOINC 55411-3,`min`), distance (`km`), average pace (`min/km`); location via run context |
| [IRunEnvironmentConditions](StructureDefinition-irun-environment-conditions.md) | Observation | subject = course (Location); components air temperature (`Cel`), relative humidity (`%`), water temperature (`Cel`, for swimmers) |
| [IRunReport](StructureDefinition-irun-report.md) | DiagnosticReport | subject = runner; results = HR, SpO2, ECG, session and conditions; conclusion; optional rendered form (PDF) |
| [IRunLocation](StructureDefinition-irun-location.md) | Location | name required; address and position (coordinates) |
| [IRunAppointment](StructureDefinition-irun-appointment.md) | Appointment | start and end required; participants sliced into runner and location |
| [IRunPreventiveCarePlan](StructureDefinition-irun-preventive-careplan.md) | CarePlan | category preventive check-up; activities reference the run appointment and the planned measurements |

The HL7 Europe base package (`hl7.fhir.eu.base` 2.0.1) does not define vital-sign profiles, so heart rate and SpO2 inherit from the FHIR core vital signs profiles, as required by FHIR for these measurements.

### Terminology

* LOINC for observation codes; UCUM for units.
* ISO/IEEE 11073 MDC (`urn:oid:2.16.840.1.113883.6.24`) for ECG leads, e.g. `131329` = lead I.
* Local code systems: [event type](CodeSystem-irun-event-type.md), [measurement phase](CodeSystem-irun-phase.md) and [exercise codes](CodeSystem-irun-exercise.md) (run / swim session, distance, average pace, air and water temperature, humidity, report, preventive check-up). These local codes could be replaced by LOINC / SNOMED CT codes in a later version.

### Examples

* [Runner](Patient-runner-example.md) and [smartwatch](Device-wearable-example.md)
* [Resting heart rate before the run](Observation-heart-rate-pre-run-example.md)
* [Heart rate during the run](Observation-heart-rate-during-run-example.md)
* [SpO2 during the run](Observation-spo2-during-run-example.md)
* [Single-lead ECG after the run](Observation-ecg-post-run-example.md)
* [Run session (place, duration, distance)](Observation-exercise-session-example.md)
* [Run course: Malaga seafront](Location-malaga-course-example.md)
* [Appointment for the run](Appointment-run-appointment-example.md)
* [Preventive care plan](CarePlan-preventive-careplan-example.md)
* [Environmental conditions at the course](Observation-environment-conditions-example.md)
* [Participant report](DiagnosticReport-run-report-example.md)

### Ideas for a Connectathon track

* Client: convert data exported from a wearable vendor app into these profiles and POST them to a FHIR server.
* Server / dashboard: search `Observation?code=8867-4&subject=...` and show results per phase and per event.
* Validation: validate the instances against this IG (e.g. with Matchbox or the HL7 validator).

### Acknowledgements

The exercise session, care plan, appointment and report, and the environmental conditions (air and water temperature, humidity), were added after feedback from participants of the Malaga Interoperability Run group.

### Code verification

All external codes used in this IG were checked on 19 Nov 2026 (not taken on trust from an AI agent's memory):

| | | | |
| :--- | :--- | :--- | :--- |
| 8867-4 | LOINC | Heart rate | tx.fhir.org`$lookup`: active |
| 2708-6 | LOINC | Oxygen saturation in Arterial blood | tx.fhir.org`$lookup`: active |
| 59408-5 | LOINC | Oxygen saturation in Arterial blood by Pulse oximetry | tx.fhir.org`$lookup`: active |
| 11524-6 | LOINC | EKG study | tx.fhir.org`$lookup`: active |
| 55411-3 | LOINC | Exercise duration | tx.fhir.org`$lookup`: active |
| 131329 | ISO/IEEE 11073 MDC | MDC_ECG_ELEC_POTL_I | FHIR R4 example Observation`ekg`(MDC is not on tx.fhir.org) |
| `/min`,`%`,`mV`,`min`,`km`,`min/km`,`Cel` | UCUM |   | tx.fhir.org`$validate-code`: valid |

