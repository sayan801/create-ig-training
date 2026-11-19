# Interoperability Run - ECG - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - ECG**

## Resource Profile: Interoperability Run - ECG 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-ecg | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunECG |

 
An ECG recording (e.g. single-lead from a smartwatch) taken during an Interoperability Run. The waveform is carried as SampledData in one component per lead, coded with ISO/IEEE 11073 MDC codes. 

**Usages:**

* Refer to this Profile: [Interoperability Run - participant report](StructureDefinition-irun-report.md)
* Examples for this Profile: [Observation/ecg-post-run-example](Observation-ecg-post-run-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-ecg.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-ecg.csv), [Excel](StructureDefinition-irun-ecg.xlsx), [Schematron](StructureDefinition-irun-ecg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-ecg",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-ecg",
  "version" : "0.1.0",
  "name" : "IRunECG",
  "title" : "Interoperability Run - ECG",
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
  "description" : "An ECG recording (e.g. single-lead from a smartwatch) taken during an Interoperability Run. The waveform is carried as SampledData in one component per lead, coded with ISO/IEEE 11073 MDC codes.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
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
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "procedure"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11524-6",
          "display" : "EKG study"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
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
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "One component per ECG lead",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "short" : "ECG lead, e.g. MDC 131329 (lead I)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "SampledData"
      }],
      "mustSupport" : true
    }]
  }
}

```
