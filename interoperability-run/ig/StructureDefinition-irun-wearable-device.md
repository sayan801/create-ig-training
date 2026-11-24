# Interoperability Run - wearable device - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - wearable device**

## Resource Profile: Interoperability Run - wearable device 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-wearable-device | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunWearableDevice |

 
A wearable device (smartwatch, chest strap, pulse oximeter, single-lead ECG) worn by the runner. 

**Usages:**

* Refer to this Profile: [Interoperability Run - ECG](StructureDefinition-irun-ecg.md), [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md), [Interoperability Run - heart rate](StructureDefinition-irun-heart-rate.md) and [Interoperability Run - oxygen saturation (SpO2)](StructureDefinition-irun-oxygen-saturation.md)
* Examples for this Profile: [Device/wearable-example](Device-wearable-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-wearable-device.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-wearable-device.csv), [Excel](StructureDefinition-irun-wearable-device.xlsx), [Schematron](StructureDefinition-irun-wearable-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-wearable-device",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-wearable-device",
  "version" : "0.1.0",
  "name" : "IRunWearableDevice",
  "title" : "Interoperability Run - wearable device",
  "status" : "draft",
  "date" : "2026-11-19T12:58:20+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "A wearable device (smartwatch, chest strap, pulse oximeter, single-lead ECG) worn by the runner.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.modelNumber",
      "path" : "Device.modelNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.patient",
      "path" : "Device.patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"]
      }],
      "mustSupport" : true
    }]
  }
}

```
