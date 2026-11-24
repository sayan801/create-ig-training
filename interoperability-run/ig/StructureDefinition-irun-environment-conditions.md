# Interoperability Run - environmental conditions - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - environmental conditions**

## Resource Profile: Interoperability Run - environmental conditions 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-environment-conditions | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunEnvironmentConditions |

 
Weather and water conditions at the course during an Interoperability Run: air temperature, relative humidity and, for swimmers, water temperature. The subject is the course (Location). 

**Usages:**

* Refer to this Profile: [Interoperability Run - participant report](StructureDefinition-irun-report.md)
* Examples for this Profile: [Observation/environment-conditions-example](Observation-environment-conditions-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-environment-conditions.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-environment-conditions.csv), [Excel](StructureDefinition-irun-environment-conditions.xlsx), [Schematron](StructureDefinition-irun-environment-conditions.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-environment-conditions",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-environment-conditions",
  "version" : "0.1.0",
  "name" : "IRunEnvironmentConditions",
  "title" : "Interoperability Run - environmental conditions",
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
  "description" : "Weather and water conditions at the course during an Interoperability Run: air temperature, relative humidity and, for swimmers, water temperature. The subject is the course (Location).",
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "environment-conditions"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location|0.1.0"]
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "short" : "Air temperature, humidity, water temperature (swimmers)"
    },
    {
      "id" : "Observation.component:airTemperature",
      "path" : "Observation.component",
      "sliceName" : "airTemperature",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:airTemperature.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "air-temperature"
        }]
      }
    },
    {
      "id" : "Observation.component:airTemperature.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "id" : "Observation.component:relativeHumidity",
      "path" : "Observation.component",
      "sliceName" : "relativeHumidity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:relativeHumidity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "relative-humidity"
        }]
      }
    },
    {
      "id" : "Observation.component:relativeHumidity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "id" : "Observation.component:waterTemperature",
      "path" : "Observation.component",
      "sliceName" : "waterTemperature",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:waterTemperature.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
          "code" : "water-temperature"
        }]
      }
    },
    {
      "id" : "Observation.component:waterTemperature.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    }]
  }
}

```
