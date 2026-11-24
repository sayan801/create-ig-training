# Home - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/ImplementationGuide/org.fhir.eu.interoperabilityrun | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:InteroperabilityRunIG |

 **Brief description of this Implementation Guide**
 This Implementation Guide captures vital-sign observations (heart rate, oxygen saturation and ECG) recorded by wearable devices during the **Interoperability Run**: the community run held at HL7 Working Group Meetings, Connectathons and DevDays. 

> This Implementation Guide is not the current version. It is the continuous integration version, subject to frequent changes and intended only to follow ongoing work. The current version will be available via the canonical URL after the first release: https://example.org/ig/interoperabilityrun

### Introduction

When the FHIR community meets (HL7 Working Group Meetings, Connectathons, DevDays), many participants join an early-morning **Interoperability Run**. Most runners wear a smartwatch, chest strap or pulse oximeter that records their vital signs.

This IG shows how to exchange those measurements in FHIR, so that data from different devices and apps can be pooled, compared and visualised for each event. It is also a small, fun training example of how to build an IG with FSH, SUSHI and the IG Publisher on top of the **HL7 Europe base profiles**.

### Scope

* **In scope:** 
* heart rate, peripheral oxygen saturation (SpO2) and ECG recordings taken before, during and after the run, with the event and measurement phase
* the run session itself: place, duration, distance and pace
* the scheduled run as an appointment, and a light preventive care plan around it
* environmental conditions: air temperature, humidity and water temperature (for swimmers)
* a participant report bringing all results together
 
* **Out of scope:** clinical interpretation, diagnosis and full GPS tracks.

All data in this guide are fictional and are **not intended for clinical use**.

### Content

* [Introduction](introduction.md): context and actors
* [Functional](functional.md): use cases and data flow
* [Implementation](implementation.md): profiles, terminology and examples
* [Artifacts](artifacts.md): all profiles, extensions, terminology and examples

### Dependencies









### Intellectual property

This publication includes IP covered under the following statements.

* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [IRunEnvironmentConditions](StructureDefinition-irun-environment-conditions.md), [IRunExerciseSession](StructureDefinition-irun-exercise-session.md)... Show 6 more, [Observation/ecg-post-run-example](Observation-ecg-post-run-example.md), [Observation/environment-conditions-example](Observation-environment-conditions-example.md), [Observation/exercise-session-example](Observation-exercise-session-example.md), [Observation/heart-rate-during-run-example](Observation-heart-rate-during-run-example.md), [Observation/heart-rate-pre-run-example](Observation-heart-rate-pre-run-example.md) and [Observation/spo2-during-run-example](Observation-spo2-during-run-example.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.3.0/CodeSystem-v3-loinc.html): [CarePlan/preventive-careplan-example](CarePlan-preventive-careplan-example.md), [IRunECG](StructureDefinition-irun-ecg.md)... Show 6 more, [IRunExerciseSession](StructureDefinition-irun-exercise-session.md), [Observation/ecg-post-run-example](Observation-ecg-post-run-example.md), [Observation/exercise-session-example](Observation-exercise-session-example.md), [Observation/heart-rate-during-run-example](Observation-heart-rate-during-run-example.md), [Observation/heart-rate-pre-run-example](Observation-heart-rate-pre-run-example.md) and [Observation/spo2-during-run-example](Observation-spo2-during-run-example.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.5.0/CodeSystem-observation-category.html): [IRunECG](StructureDefinition-irun-ecg.md), [IRunExerciseSession](StructureDefinition-irun-exercise-session.md)... Show 5 more, [Observation/ecg-post-run-example](Observation-ecg-post-run-example.md), [Observation/exercise-session-example](Observation-exercise-session-example.md), [Observation/heart-rate-during-run-example](Observation-heart-rate-during-run-example.md), [Observation/heart-rate-pre-run-example](Observation-heart-rate-pre-run-example.md) and [Observation/spo2-during-run-example](Observation-spo2-during-run-example.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "org.fhir.eu.interoperabilityrun",
  "url" : "https://example.org/ig/interoperabilityrun/ImplementationGuide/org.fhir.eu.interoperabilityrun",
  "version" : "0.1.0",
  "name" : "InteroperabilityRunIG",
  "title" : "Interoperability Run IG",
  "status" : "draft",
  "date" : "2026-11-19T13:44:34+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "Captures vital-sign observations (heart rate, SpO2, ECG) recorded by wearable devices during the Interoperability Run held at HL7 Working Group Meetings, Connectathons and DevDays.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "packageId" : "org.fhir.eu.interoperabilityrun",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
  },
  {
    "id" : "hl7_fhir_eu_base",
    "uri" : "http://hl7.eu/fhir/base/ImplementationGuide/hl7.fhir.eu.base",
    "packageId" : "hl7.fhir.eu.base",
    "version" : "2.0.1"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "generate"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://example.org/ig/interoperabilityrun/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-run-appointment-example.html"
      }],
      "reference" : {
        "reference" : "Appointment/run-appointment-example"
      },
      "name" : "Example appointment: Interoperability Run",
      "description" : "The scheduled Interoperability Run on Wednesday morning at the HL7 Europe WGM Malaga 2026.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-appointment|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-environment-conditions-example.html"
      }],
      "reference" : {
        "reference" : "Observation/environment-conditions-example"
      },
      "name" : "Example environmental conditions at the course",
      "description" : "Air temperature, humidity and sea water temperature at the Malaga seafront during the run (illustrative values).",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-environment-conditions|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-heart-rate-during-run-example.html"
      }],
      "reference" : {
        "reference" : "Observation/heart-rate-during-run-example"
      },
      "name" : "Example heart rate during the run",
      "description" : "Heart rate of the runner during the Interoperability Run at the HL7 Europe WGM Malaga 2026.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-heart-rate|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-run-report-example.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/run-report-example"
      },
      "name" : "Example participant report",
      "description" : "The runner's Interoperability Run report: resting and running heart rate, SpO2, ECG after the run, run session and conditions.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-report|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-preventive-careplan-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/preventive-careplan-example"
      },
      "name" : "Example preventive care plan",
      "description" : "A runner's preventive check-up plan around the Interoperability Run: resting vital signs before, join the run, recovery vital signs and ECG after.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-preventive-careplan|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-heart-rate-pre-run-example.html"
      }],
      "reference" : {
        "reference" : "Observation/heart-rate-pre-run-example"
      },
      "name" : "Example resting heart rate before the run",
      "description" : "Baseline heart rate of the runner before the start.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-heart-rate|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-malaga-course-example.html"
      }],
      "reference" : {
        "reference" : "Location/malaga-course-example"
      },
      "name" : "Example run course: Malaga seafront",
      "description" : "Fictional meeting point and course for the Interoperability Run at the HL7 Europe WGM Malaga 2026.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-exercise-session-example.html"
      }],
      "reference" : {
        "reference" : "Observation/exercise-session-example"
      },
      "name" : "Example run session",
      "description" : "Summary of the runner's Interoperability Run: place, duration and distance.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-exercise-session|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-runner-example.html"
      }],
      "reference" : {
        "reference" : "Patient/runner-example"
      },
      "name" : "Example runner",
      "description" : "A fictional participant of the Interoperability Run at the HL7 Europe WGM Malaga 2026.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ecg-post-run-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ecg-post-run-example"
      },
      "name" : "Example single-lead ECG after the run",
      "description" : "A short single-lead (lead I) ECG strip recorded by the smartwatch right after the finish. The data are illustrative, not clinical.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-ecg|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-spo2-during-run-example.html"
      }],
      "reference" : {
        "reference" : "Observation/spo2-during-run-example"
      },
      "name" : "Example SpO2 during the run",
      "description" : "Oxygen saturation of the runner during the Interoperability Run.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-oxygen-saturation|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-wearable-example.html"
      }],
      "reference" : {
        "reference" : "Device/wearable-example"
      },
      "name" : "Example wearable device",
      "description" : "A fictional smartwatch with optical heart rate, SpO2 and single-lead ECG.",
      "exampleCanonical" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-wearable-device|0.1.0"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-appointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-appointment"
      },
      "name" : "Interoperability Run - appointment",
      "description" : "The scheduled Interoperability Run (or a preventive check-up slot around it) with the runner and the meeting location.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-ecg.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-ecg"
      },
      "name" : "Interoperability Run - ECG",
      "description" : "An ECG recording (e.g. single-lead from a smartwatch) taken during an Interoperability Run. The waveform is carried as SampledData in one component per lead, coded with ISO/IEEE 11073 MDC codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-environment-conditions.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-environment-conditions"
      },
      "name" : "Interoperability Run - environmental conditions",
      "description" : "Weather and water conditions at the course during an Interoperability Run: air temperature, relative humidity and, for swimmers, water temperature. The subject is the course (Location).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-irun-event-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/irun-event-type"
      },
      "name" : "Interoperability Run - event type",
      "description" : "The kind of community event at which an Interoperability Run takes place.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-irun-event-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/irun-event-type"
      },
      "name" : "Interoperability Run - event types",
      "description" : "All event types for an Interoperability Run.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-irun-exercise.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/irun-exercise"
      },
      "name" : "Interoperability Run - exercise codes",
      "description" : "Codes for the run session and its measurements where no suitable LOINC code is used in this training IG.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-exercise-session.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-exercise-session"
      },
      "name" : "Interoperability Run - exercise session",
      "description" : "Summary of the exercise session (run, or swim for the swimmers): where it took place, how long it lasted and how far the participant went.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-heart-rate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-heart-rate"
      },
      "name" : "Interoperability Run - heart rate",
      "description" : "Heart rate measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs heart rate profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-location"
      },
      "name" : "Interoperability Run - location",
      "description" : "The run course or meeting point of an Interoperability Run (e.g. a seafront promenade near the meeting venue).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-irun-phase.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/irun-phase"
      },
      "name" : "Interoperability Run - measurement phase",
      "description" : "When, relative to the run, a measurement was taken.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-irun-phase.html"
      }],
      "reference" : {
        "reference" : "ValueSet/irun-phase"
      },
      "name" : "Interoperability Run - measurement phases",
      "description" : "All measurement phases for an Interoperability Run.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-oxygen-saturation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-oxygen-saturation"
      },
      "name" : "Interoperability Run - oxygen saturation (SpO2)",
      "description" : "Peripheral oxygen saturation (SpO2) measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs oxygen saturation profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-report"
      },
      "name" : "Interoperability Run - participant report",
      "description" : "A report for one participant of an Interoperability Run, bringing together the vital signs, ECG, exercise session and environmental conditions, with a short (non-clinical) conclusion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-preventive-careplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-preventive-careplan"
      },
      "name" : "Interoperability Run - preventive care plan",
      "description" : "A light preventive care plan for a runner: check vital signs before and after the run and join the scheduled run.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-runner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-runner"
      },
      "name" : "Interoperability Run - runner",
      "description" : "A participant of the Interoperability Run. Inherits from the HL7 Europe Patient (EU core) profile, which requires a name and a birth date.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-irun-session-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/irun-session-type"
      },
      "name" : "Interoperability Run - session types",
      "description" : "Kinds of exercise session: run or swim.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-wearable-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-wearable-device"
      },
      "name" : "Interoperability Run - wearable device",
      "description" : "A wearable device (smartwatch, chest strap, pulse oximeter, single-lead ECG) worn by the runner.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-irun-context.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/irun-context"
      },
      "name" : "Interoperability Run context",
      "description" : "Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "introduction.html"
        }],
        "nameUrl" : "introduction.html",
        "title" : "Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "functional.html"
        }],
        "nameUrl" : "functional.html",
        "title" : "Functional",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "implementation.html"
        }],
        "nameUrl" : "implementation.html",
        "title" : "Implementation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "about.html"
        }],
        "nameUrl" : "about.html",
        "title" : "About",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
