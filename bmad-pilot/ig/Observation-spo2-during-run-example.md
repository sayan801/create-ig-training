# Example SpO2 during the run - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example SpO2 during the run**

## Example Observation: Example SpO2 during the run

Profile: [Interoperability Run - oxygen saturation (SpO2)](StructureDefinition-irun-oxygen-saturation.md)

> **Interoperability Run context**
* eventType: [Interoperability Run - event type: wgm](CodeSystem-irun-event-type.md#irun-event-type-wgm) (HL7 Working Group Meeting)
* eventName: HL7 Europe WGM Malaga 2026
* phase: [Interoperability Run - measurement phase: during-run](CodeSystem-irun-phase.md#irun-phase-during-run) (During the run)
* location: [Malaga seafront run course](Location-malaga-course-example.md)

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)

**effective**: 2026-11-18 07:45:00+0100

**value**: 96 % (Details: UCUM code% = '%')

**device**: [Device: manufacturer = Example Wearables Ltd; modelNumber = SW-1; type = Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG](Device-wearable-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "spo2-during-run-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-oxygen-saturation"]
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
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2708-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "effectiveDateTime" : "2026-11-18T07:45:00+01:00",
  "valueQuantity" : {
    "value" : 96,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "Device/wearable-example"
  }
}

```
