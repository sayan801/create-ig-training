# Artifacts Summary - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Interoperability Run - ECG](StructureDefinition-irun-ecg.md) | An ECG recording (e.g. single-lead from a smartwatch) taken during an Interoperability Run. The waveform is carried as SampledData in one component per lead, coded with ISO/IEEE 11073 MDC codes. |
| [Interoperability Run - appointment](StructureDefinition-irun-appointment.md) | The scheduled Interoperability Run (or a preventive check-up slot around it) with the runner and the meeting location. |
| [Interoperability Run - environmental conditions](StructureDefinition-irun-environment-conditions.md) | Weather and water conditions at the course during an Interoperability Run: air temperature, relative humidity and, for swimmers, water temperature. The subject is the course (Location). |
| [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md) | Summary of the exercise session (run, or swim for the swimmers): where it took place, how long it lasted and how far the participant went. |
| [Interoperability Run - heart rate](StructureDefinition-irun-heart-rate.md) | Heart rate measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs heart rate profile. |
| [Interoperability Run - location](StructureDefinition-irun-location.md) | The run course or meeting point of an Interoperability Run (e.g. a seafront promenade near the meeting venue). |
| [Interoperability Run - oxygen saturation (SpO2)](StructureDefinition-irun-oxygen-saturation.md) | Peripheral oxygen saturation (SpO2) measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs oxygen saturation profile. |
| [Interoperability Run - participant report](StructureDefinition-irun-report.md) | A report for one participant of an Interoperability Run, bringing together the vital signs, ECG, exercise session and environmental conditions, with a short (non-clinical) conclusion. |
| [Interoperability Run - preventive care plan](StructureDefinition-irun-preventive-careplan.md) | A light preventive care plan for a runner: check vital signs before and after the run and join the scheduled run. |
| [Interoperability Run - runner](StructureDefinition-irun-runner.md) | A participant of the Interoperability Run. Inherits from the HL7 Europe Patient (EU core) profile, which requires a name and a birth date. |
| [Interoperability Run - wearable device](StructureDefinition-irun-wearable-device.md) | A wearable device (smartwatch, chest strap, pulse oximeter, single-lead ECG) worn by the runner. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Interoperability Run context](StructureDefinition-irun-context.md) | Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Interoperability Run - event types](ValueSet-irun-event-type.md) | All event types for an Interoperability Run. |
| [Interoperability Run - measurement phases](ValueSet-irun-phase.md) | All measurement phases for an Interoperability Run. |
| [Interoperability Run - session types](ValueSet-irun-session-type.md) | Kinds of exercise session: run or swim. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Interoperability Run - event type](CodeSystem-irun-event-type.md) | The kind of community event at which an Interoperability Run takes place. |
| [Interoperability Run - exercise codes](CodeSystem-irun-exercise.md) | Codes for the run session and its measurements where no suitable LOINC code is used in this training IG. |
| [Interoperability Run - measurement phase](CodeSystem-irun-phase.md) | When, relative to the run, a measurement was taken. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example SpO2 during the run](Observation-spo2-during-run-example.md) | Oxygen saturation of the runner during the Interoperability Run. |
| [Example appointment: Interoperability Run](Appointment-run-appointment-example.md) | The scheduled Interoperability Run on Wednesday morning at the HL7 Europe WGM Malaga 2026. |
| [Example environmental conditions at the course](Observation-environment-conditions-example.md) | Air temperature, humidity and sea water temperature at the Malaga seafront during the run (illustrative values). |
| [Example heart rate during the run](Observation-heart-rate-during-run-example.md) | Heart rate of the runner during the Interoperability Run at the HL7 Europe WGM Malaga 2026. |
| [Example participant report](DiagnosticReport-run-report-example.md) | The runner's Interoperability Run report: resting and running heart rate, SpO2, ECG after the run, run session and conditions. |
| [Example preventive care plan](CarePlan-preventive-careplan-example.md) | A runner's preventive check-up plan around the Interoperability Run: resting vital signs before, join the run, recovery vital signs and ECG after. |
| [Example resting heart rate before the run](Observation-heart-rate-pre-run-example.md) | Baseline heart rate of the runner before the start. |
| [Example run course: Malaga seafront](Location-malaga-course-example.md) | Fictional meeting point and course for the Interoperability Run at the HL7 Europe WGM Malaga 2026. |
| [Example run session](Observation-exercise-session-example.md) | Summary of the runner's Interoperability Run: place, duration and distance. |
| [Example runner](Patient-runner-example.md) | A fictional participant of the Interoperability Run at the HL7 Europe WGM Malaga 2026. |
| [Example single-lead ECG after the run](Observation-ecg-post-run-example.md) | A short single-lead (lead I) ECG strip recorded by the smartwatch right after the finish. The data are illustrative, not clinical. |
| [Example wearable device](Device-wearable-example.md) | A fictional smartwatch with optical heart rate, SpO2 and single-lead ECG. |

