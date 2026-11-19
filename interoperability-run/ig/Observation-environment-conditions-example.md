# Example environmental conditions at the course - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example environmental conditions at the course**

## Example Observation: Example environmental conditions at the course

Profile: [Interoperability Run - environmental conditions](StructureDefinition-irun-environment-conditions.md)

> **Interoperability Run context**
* eventType: [Interoperability Run - event type: wgm](CodeSystem-irun-event-type.md#irun-event-type-wgm) (HL7 Working Group Meeting)
* eventName: HL7 Europe WGM Malaga 2026
* phase: [Interoperability Run - measurement phase: during-run](CodeSystem-irun-phase.md#irun-phase-during-run) (During the run)
* location: [Malaga seafront run course](Location-malaga-course-example.md)

**status**: Final

**code**: Environmental conditions

**subject**: [Malaga seafront run course](Location-malaga-course-example.md)

**effective**: 2026-11-18 07:30:00+0100

> **component****code**: Air temperature**value**: 14 °C (Details: UCUM codeCel = 'Cel')

> **component****code**: Relative humidity**value**: 72 % (Details: UCUM code% = '%')

> **component****code**: Water temperature**value**: 18 °C (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "environment-conditions-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-environment-conditions"]
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
  "code" : {
    "coding" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "code" : "environment-conditions"
    }]
  },
  "subject" : {
    "reference" : "Location/malaga-course-example"
  },
  "effectiveDateTime" : "2026-11-18T07:30:00+01:00",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
        "code" : "air-temperature"
      }]
    },
    "valueQuantity" : {
      "value" : 14,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "Cel"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
        "code" : "relative-humidity"
      }]
    },
    "valueQuantity" : {
      "value" : 72,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
        "code" : "water-temperature"
      }]
    },
    "valueQuantity" : {
      "value" : 18,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "Cel"
    }
  }]
}

```
