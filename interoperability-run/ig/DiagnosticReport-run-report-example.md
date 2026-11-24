# Example participant report - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example participant report**

## Example DiagnosticReport: Example participant report

Profile: [Interoperability Run - participant report](StructureDefinition-irun-report.md)

### Interoperability Run report (Preventive check-up) 

| | |
| :--- | :--- |
| Subject | Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042) |
| Relevant Time | 2026-11-18 07:25:00+0100 --> 2026-11-18 08:05:30+0100 |
| Reported | 2026-11-18 09:00:00+0100 |

**Report Details**

* **Code**: [Heart rate](Observation-heart-rate-pre-run-example.md)
  * **Value**: 64 beats/minute (Details: UCUM code/min = '/min')
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 07:25:00+0100
* **Code**: [Heart rate](Observation-heart-rate-during-run-example.md)
  * **Value**: 152 beats/minute (Details: UCUM code/min = '/min')
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 07:45:00+0100
* **Code**: [Oxygen saturation in Arterial blood](Observation-spo2-during-run-example.md)
  * **Value**: 96 % (Details: UCUM code% = '%')
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 07:45:00+0100
* **Code**: [EKG study](Observation-ecg-post-run-example.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 08:05:00+0100 --> 2026-11-18 08:05:30+0100
* **Code**: [Run session](Observation-exercise-session-example.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 07:30:00+0100 --> 2026-11-18 08:02:00+0100
* **Code**: [Environmental conditions](Observation-environment-conditions-example.md)
  * **Value**: 
  * **Flags**: Final
  * **Relevant Time**: 2026-11-18 07:30:00+0100

5.2 km in 32 min (6:09 min/km) at 14 °C and 72% humidity. Heart rate rose from 64 to 152 /min, SpO2 stayed at 96%. Illustrative data, not for clinical use.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "run-report-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-report"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "code" : "preventive-checkup"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "code" : "run-report"
    }]
  },
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "effectivePeriod" : {
    "start" : "2026-11-18T07:25:00+01:00",
    "end" : "2026-11-18T08:05:30+01:00"
  },
  "issued" : "2026-11-18T09:00:00+01:00",
  "result" : [{
    "reference" : "Observation/heart-rate-pre-run-example"
  },
  {
    "reference" : "Observation/heart-rate-during-run-example"
  },
  {
    "reference" : "Observation/spo2-during-run-example"
  },
  {
    "reference" : "Observation/ecg-post-run-example"
  },
  {
    "reference" : "Observation/exercise-session-example"
  },
  {
    "reference" : "Observation/environment-conditions-example"
  }],
  "conclusion" : "5.2 km in 32 min (6:09 min/km) at 14 °C and 72% humidity. Heart rate rose from 64 to 152 /min, SpO2 stayed at 96%. Illustrative data, not for clinical use."
}

```
