# Example single-lead ECG after the run - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example single-lead ECG after the run**

## Example Observation: Example single-lead ECG after the run

Profile: [Interoperability Run - ECG](StructureDefinition-irun-ecg.md)

> **Interoperability Run context**
* eventType: [Interoperability Run - event type: wgm](CodeSystem-irun-event-type.md#irun-event-type-wgm) (HL7 Working Group Meeting)
* eventName: HL7 Europe WGM Malaga 2026
* phase: [Interoperability Run - measurement phase: post-run](CodeSystem-irun-phase.md#irun-phase-post-run) (After the run)

**status**: Final

**category**: Procedure

**code**: EKG study

**subject**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)

**effective**: 2026-11-18 08:05:00+0100 --> 2026-11-18 08:05:30+0100

**device**: [Device: manufacturer = Example Wearables Ltd; modelNumber = SW-1; type = Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG](Device-wearable-example.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | MDC_ECG_ELEC_POTL_I | Origin: 0 mV , Factor: 1 , Dimensions: 1 , Data: 0.02 0.03 0.05 0.04 0.02 -0.05 1.10 -0.30 0.01 0.08 0.15 0.12 0.05 0.02 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ecg-post-run-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-ecg"]
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
        "code" : "post-run"
      }
    }],
    "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure",
      "display" : "Procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    }]
  },
  "subject" : {
    "reference" : "Patient/runner-example"
  },
  "effectivePeriod" : {
    "start" : "2026-11-18T08:05:00+01:00",
    "end" : "2026-11-18T08:05:30+01:00"
  },
  "device" : {
    "reference" : "Device/wearable-example"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "urn:oid:2.16.840.1.113883.6.24",
        "code" : "131329",
        "display" : "MDC_ECG_ELEC_POTL_I"
      }]
    },
    "valueSampledData" : {
      "origin" : {
        "value" : 0,
        "unit" : "mV",
        "system" : "http://unitsofmeasure.org",
        "code" : "mV"
      },
      "period" : 2,
      "factor" : 1,
      "dimensions" : 1,
      "data" : "0.02 0.03 0.05 0.04 0.02 -0.05 1.10 -0.30 0.01 0.08 0.15 0.12 0.05 0.02"
    }
  }]
}

```
