# Example preventive care plan - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example preventive care plan**

## Example CarePlan: Example preventive care plan

Profile: [Interoperability Run - preventive care plan](StructureDefinition-irun-preventive-careplan.md)

**status**: Active

**intent**: Plan

**category**: Preventive check-up

**title**: Interoperability Run preventive check-up

**description**: Measure resting heart rate and SpO2 before the run, join the run, then record recovery heart rate and a single-lead ECG after the finish.

**subject**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)

**period**: 2026-11-18 07:00:00+0100 --> 2026-11-18 09:00:00+0100

> **activity****reference**: [Appointment: status = booked; serviceType = Interoperability Run; description = Interoperability Run - HL7 Europe WGM Malaga 2026, meeting point in front of the hotel; start = 2026-11-18 07:30:00+0100; end = 2026-11-18 08:15:00+0100](Appointment-run-appointment-example.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Heart rate | Completed | Resting and recovery heart rate (before and after the run) |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Oxygen saturation in Arterial blood | Completed | SpO2 before and during the run |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | EKG study | Completed | Single-lead ECG right after the finish |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "preventive-careplan-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-preventive-careplan"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "code" : "preventive-checkup"
    }]
  }],
  "title" : "Interoperability Run preventive check-up",
  "description" : "Measure resting heart rate and SpO2 before the run, join the run, then record recovery heart rate and a single-lead ECG after the finish.",
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "period" : {
    "start" : "2026-11-18T07:00:00+01:00",
    "end" : "2026-11-18T09:00:00+01:00"
  },
  "activity" : [{
    "reference" : {
      "reference" : "Appointment/run-appointment-example"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8867-4",
          "display" : "Heart rate"
        }]
      },
      "status" : "completed",
      "description" : "Resting and recovery heart rate (before and after the run)"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2708-6",
          "display" : "Oxygen saturation in Arterial blood"
        }]
      },
      "status" : "completed",
      "description" : "SpO2 before and during the run"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11524-6",
          "display" : "EKG study"
        }]
      },
      "status" : "completed",
      "description" : "Single-lead ECG right after the finish"
    }
  }]
}

```
