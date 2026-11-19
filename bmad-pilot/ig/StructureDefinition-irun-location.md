# Interoperability Run - location - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - location**

## Resource Profile: Interoperability Run - location 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunLocation |

 
The run course or meeting point of an Interoperability Run (e.g. a seafront promenade near the meeting venue). 

**Usages:**

* Refer to this Profile: [Interoperability Run - appointment](StructureDefinition-irun-appointment.md), [Interoperability Run context](StructureDefinition-irun-context.md) and [Interoperability Run - environmental conditions](StructureDefinition-irun-environment-conditions.md)
* Examples for this Profile: [Malaga seafront run course](Location-malaga-course-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-location.csv), [Excel](StructureDefinition-irun-location.xlsx), [Schematron](StructureDefinition-irun-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-location",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location",
  "version" : "0.1.0",
  "name" : "IRunLocation",
  "title" : "Interoperability Run - location",
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
  "description" : "The run course or meeting point of an Interoperability Run (e.g. a seafront promenade near the meeting venue).",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "mustSupport" : true
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "short" : "Start / meeting point coordinates",
      "mustSupport" : true
    }]
  }
}

```
