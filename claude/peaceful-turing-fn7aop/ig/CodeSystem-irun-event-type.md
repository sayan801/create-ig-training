# Interoperability Run - event type - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - event type**

## CodeSystem: Interoperability Run - event type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/CodeSystem/irun-event-type | *Version*:0.1.0 |
| Draft as of 2026-11-24 | *Computable Name*:IRunEventTypeCS |

 
The kind of community event at which an Interoperability Run takes place. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Interoperability Run - event types](ValueSet-irun-event-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "irun-event-type",
  "url" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-event-type",
  "version" : "0.1.0",
  "name" : "IRunEventTypeCS",
  "title" : "Interoperability Run - event type",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-24T10:14:58+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "The kind of community event at which an Interoperability Run takes place.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "wgm",
    "display" : "HL7 Working Group Meeting",
    "definition" : "An HL7 International or HL7 Europe Working Group Meeting."
  },
  {
    "code" : "connectathon",
    "display" : "Connectathon",
    "definition" : "An HL7 FHIR Connectathon or IHE Connectathon."
  },
  {
    "code" : "devdays",
    "display" : "FHIR DevDays",
    "definition" : "A FHIR DevDays conference."
  },
  {
    "code" : "other",
    "display" : "Other event",
    "definition" : "Any other community event hosting an Interoperability Run."
  }]
}

```
