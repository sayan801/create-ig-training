# Interoperability Run - session types - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - session types**

## ValueSet: Interoperability Run - session types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/ValueSet/irun-session-type | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunSessionTypeVS |

 
Kinds of exercise session: run or swim. 

 **References** 

* [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "irun-session-type",
  "url" : "https://example.org/ig/interoperabilityrun/ValueSet/irun-session-type",
  "version" : "0.1.0",
  "name" : "IRunSessionTypeVS",
  "title" : "Interoperability Run - session types",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-19T13:44:34+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "Kinds of exercise session: run or swim.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
      "version" : "0.1.0",
      "concept" : [{
        "code" : "run-session"
      },
      {
        "code" : "swim-session"
      }]
    }]
  }
}

```
