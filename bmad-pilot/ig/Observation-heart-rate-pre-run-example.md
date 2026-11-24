# Example resting heart rate before the run - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example resting heart rate before the run**

## Example Observation: Example resting heart rate before the run

Profile: [Interoperability Run - heart rate](StructureDefinition-irun-heart-rate.md)

> **Interoperability Run context**
* eventType: [Interoperability Run - event type: wgm](CodeSystem-irun-event-type.md#irun-event-type-wgm) (HL7 Working Group Meeting)
* eventName: HL7 Europe WGM Malaga 2026
* phase: [Interoperability Run - measurement phase: pre-run](CodeSystem-irun-phase.md#irun-phase-pre-run) (Before the run)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)

**effective**: 2026-11-18 07:25:00+0100

**value**: 64 beats/minute (Details: UCUM code/min = '/min')

**device**: [Device: manufacturer = Example Wearables Ltd; modelNumber = SW-1; type = Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG](Device-wearable-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "heart-rate-pre-run-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-heart-rate"]
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
        "code" : "pre-run"
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
      "code" : "8867-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "effectiveDateTime" : "2026-11-18T07:25:00+01:00",
  "valueQuantity" : {
    "value" : 64,
    "unit" : "beats/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "device" : {
    "reference" : "Device/wearable-example"
  }
}

```
