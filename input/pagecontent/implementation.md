### Profiles

| Profile | Parent | Main constraints |
|---|---|---|
| [IRunRunner](StructureDefinition-irun-runner.html) | HL7 Europe `patient-eu-core` | identifier (bib number) 1..*, name and birthDate required (from EU core) |
| [IRunWearableDevice](StructureDefinition-irun-wearable-device.html) | Device | deviceName, type and patient required |
| [IRunHeartRate](StructureDefinition-irun-heart-rate.html) | FHIR core `heartrate` (vital signs) | LOINC 8867-4, unit `/min`, run context, device required |
| [IRunOxygenSaturation](StructureDefinition-irun-oxygen-saturation.html) | FHIR core `oxygensat` (vital signs) | LOINC 2708-6, unit `%`, run context, device required |
| [IRunECG](StructureDefinition-irun-ecg.html) | Observation | LOINC 11524-6, one component per lead with an MDC code and SampledData waveform |

The HL7 Europe base package (`hl7.fhir.eu.base` 2.0.1) does not define vital-sign profiles, so heart rate and SpO2 inherit from the FHIR core vital signs profiles, as required by FHIR for these measurements.

### Terminology

* LOINC for observation codes; UCUM for units.
* ISO/IEEE 11073 MDC (`urn:oid:2.16.840.1.113883.6.24`) for ECG leads, e.g. `131329` = lead I.
* Local code systems: [event type](CodeSystem-irun-event-type.html) and [measurement phase](CodeSystem-irun-phase.html).

### Examples

* [Runner](Patient-runner-example.html) and [smartwatch](Device-wearable-example.html)
* [Resting heart rate before the run](Observation-heart-rate-pre-run-example.html)
* [Heart rate during the run](Observation-heart-rate-during-run-example.html)
* [SpO2 during the run](Observation-spo2-during-run-example.html)
* [Single-lead ECG after the run](Observation-ecg-post-run-example.html)

### Ideas for a Connectathon track

* Client: convert data exported from a wearable vendor app into these profiles and POST them to a FHIR server.
* Server / dashboard: search `Observation?code=8867-4&subject=...` and show results per phase and per event.
* Validation: validate the instances against this IG (e.g. with Matchbox or the HL7 validator).
