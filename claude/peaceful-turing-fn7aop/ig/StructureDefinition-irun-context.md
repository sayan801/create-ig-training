# Interoperability Run context - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run context**

## Extension: Interoperability Run context 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context | *Version*:0.1.0 |
| Draft as of 2026-11-24 | *Computable Name*:IRunContext |

Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Interoperability Run - ECG](StructureDefinition-irun-ecg.md), [Interoperability Run - environmental conditions](StructureDefinition-irun-environment-conditions.md), [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md), [Interoperability Run - heart rate](StructureDefinition-irun-heart-rate.md) and [Interoperability Run - oxygen saturation (SpO2)](StructureDefinition-irun-oxygen-saturation.md)
* Examples for this Extension: [Observation/ecg-post-run-example](Observation-ecg-post-run-example.md), [Observation/environment-conditions-example](Observation-environment-conditions-example.md), [Observation/exercise-session-example](Observation-exercise-session-example.md), [Observation/heart-rate-during-run-example](Observation-heart-rate-during-run-example.md)... Show 2 more, [Observation/heart-rate-pre-run-example](Observation-heart-rate-pre-run-example.md) and [Observation/spo2-during-run-example](Observation-spo2-during-run-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-context.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-context.csv), [Excel](StructureDefinition-irun-context.xlsx), [Schematron](StructureDefinition-irun-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-context",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context",
  "version" : "0.1.0",
  "name" : "IRunContext",
  "title" : "Interoperability Run context",
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
  "description" : "Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Interoperability Run context",
      "definition" : "Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:eventType",
      "path" : "Extension.extension",
      "sliceName" : "eventType",
      "short" : "Type of event (WGM, Connectathon, DevDays...)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:eventType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:eventType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "eventType"
    },
    {
      "id" : "Extension.extension:eventType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://example.org/ig/interoperabilityrun/ValueSet/irun-event-type|0.1.0"
      }
    },
    {
      "id" : "Extension.extension:eventName",
      "path" : "Extension.extension",
      "sliceName" : "eventName",
      "short" : "Name of the event, e.g. HL7 Europe WGM Malaga 2026",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:eventName.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:eventName.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "eventName"
    },
    {
      "id" : "Extension.extension:eventName.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:phase",
      "path" : "Extension.extension",
      "sliceName" : "phase",
      "short" : "Before, during or after the run",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:phase.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:phase.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "phase"
    },
    {
      "id" : "Extension.extension:phase.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://example.org/ig/interoperabilityrun/ValueSet/irun-phase|0.1.0"
      }
    },
    {
      "id" : "Extension.extension:location",
      "path" : "Extension.extension",
      "sliceName" : "location",
      "short" : "Where the run took place (course / meeting point)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:location.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:location.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "location"
    },
    {
      "id" : "Extension.extension:location.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location|0.1.0"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
