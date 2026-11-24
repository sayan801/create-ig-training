# Interoperability Run - oxygen saturation (SpO2) - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - oxygen saturation (SpO2)**

## Resource Profile: Interoperability Run - oxygen saturation (SpO2) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-oxygen-saturation | *Version*:0.1.0 |
| Draft as of 2026-11-24 | *Computable Name*:IRunOxygenSaturation |

 
Peripheral oxygen saturation (SpO2) measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs oxygen saturation profile. 

**Usages:**

* Refer to this Profile: [Interoperability Run - participant report](StructureDefinition-irun-report.md)
* Examples for this Profile: [Observation/spo2-during-run-example](Observation-spo2-during-run-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-oxygen-saturation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-oxygen-saturation.csv), [Excel](StructureDefinition-irun-oxygen-saturation.xlsx), [Schematron](StructureDefinition-irun-oxygen-saturation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-oxygen-saturation",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-oxygen-saturation",
  "version" : "0.1.0",
  "name" : "IRunOxygenSaturation",
  "title" : "Interoperability Run - oxygen saturation (SpO2)",
  "status" : "draft",
  "date" : "2026-11-24T10:14:58+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "Peripheral oxygen saturation (SpO2) measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs oxygen saturation profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/oxygensat|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.extension:runContext",
      "path" : "Observation.extension",
      "sliceName" : "runContext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-wearable-device|0.1.0"]
      }],
      "mustSupport" : true
    }]
  }
}

```
