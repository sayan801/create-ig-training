# Example run session - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example run session**

## Example Observation: Example run session

Profile: [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md)

> **Interoperability Run context**
* eventType: [Interoperability Run - event type: wgm](CodeSystem-irun-event-type.md#irun-event-type-wgm) (HL7 Working Group Meeting)
* eventName: HL7 Europe WGM Malaga 2026
* phase: [Interoperability Run - measurement phase: during-run](CodeSystem-irun-phase.md#irun-phase-during-run) (During the run)
* location: [Malaga seafront run course](Location-malaga-course-example.md)

**status**: Final

**category**: Activity

**code**: Run session

**subject**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)

**effective**: 2026-11-18 07:30:00+0100 --> 2026-11-18 08:02:00+0100

**device**: [Device: manufacturer = Example Wearables Ltd; modelNumber = SW-1; type = Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG](Device-wearable-example.md)

> **component****code**: Exercise duration**value**: 32 min (Details: UCUM codemin = 'min')

> **component****code**: Distance run**value**: 5.2 km (Details: UCUM codekm = 'km')

> **component****code**: Average pace**value**: 6.15 min/km (Details: UCUM codemin/km = 'min/km')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "exercise-session-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-exercise-session"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "eventType",
      "valueCoding" : {
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-event-type",
        "code" : "wgm"
      }
    },
    {
      "url" : "eventName",
      "valueString" : "HL7 Europe WGM Malaga 2026"
    },
    {
      "url" : "phase",
      "valueCoding" : {
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-phase",
        "code" : "during-run"
      }
    },
    {
      "url" : "location",
      "valueReference" : {
        "reference" : "Location/malaga-course-example"
      }
    }],
    "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "activity"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "code" : "run-session"
    }]
  },
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "effectivePeriod" : {
    "start" : "2026-11-18T07:30:00+01:00",
    "end" : "2026-11-18T08:02:00+01:00"
  },
  "device" : {
    "reference" : "Device/wearable-example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55411-3",
        "display" : "Exercise duration"
      }]
    },
    "valueQuantity" : {
      "value" : 32,
      "unit" : "min",
      "system" : "http://unitsofmeasure.org",
      "code" : "min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
        "code" : "distance"
      }]
    },
    "valueQuantity" : {
      "value" : 5.2,
      "unit" : "km",
      "system" : "http://unitsofmeasure.org",
      "code" : "km"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
        "code" : "average-pace"
      }]
    },
    "valueQuantity" : {
      "value" : 6.15,
      "unit" : "min/km",
      "system" : "http://unitsofmeasure.org",
      "code" : "min/km"
    }
  }]
}

```
