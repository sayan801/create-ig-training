# Interoperability Run - participant report - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - participant report**

## Resource Profile: Interoperability Run - participant report 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-report | *Version*:0.1.0 |
| Draft as of 2026-11-24 | *Computable Name*:IRunReport |

 
A report for one participant of an Interoperability Run, bringing together the vital signs, ECG, exercise session and environmental conditions, with a short (non-clinical) conclusion. 

**Usages:**

* Examples for this Profile: [DiagnosticReport/run-report-example](DiagnosticReport-run-report-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-report.csv), [Excel](StructureDefinition-irun-report.xlsx), [Schematron](StructureDefinition-irun-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-report",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-report",
  "version" : "0.1.0",
  "name" : "IRunReport",
  "title" : "Interoperability Run - participant report",
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
  "description" : "A report for one participant of an Interoperability Run, bringing together the vital signs, ECG, exercise session and environmental conditions, with a short (non-clinical) conclusion.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "preventive-checkup"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "run-report"
        }]
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-heart-rate|0.1.0",
        "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-oxygen-saturation|0.1.0",
        "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-ecg|0.1.0",
        "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-exercise-session|0.1.0",
        "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-environment-conditions|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "short" : "Optional rendered report (e.g. PDF)",
      "mustSupport" : true
    }]
  }
}

```
