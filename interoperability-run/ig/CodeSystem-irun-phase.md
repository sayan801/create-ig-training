# Interoperability Run - measurement phase - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - measurement phase**

## CodeSystem: Interoperability Run - measurement phase (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/CodeSystem/irun-phase | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunPhaseCS |

 
When, relative to the run, a measurement was taken. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Interoperability Run - measurement phases](ValueSet-irun-phase.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "irun-phase",
  "url" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-phase",
  "version" : "0.1.0",
  "name" : "IRunPhaseCS",
  "title" : "Interoperability Run - measurement phase",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-19T12:58:20+00:00",
  "publisher" : "Work Group Meeting HL7 Europe Malaga",
  "contact" : [{
    "name" : "Work Group Meeting HL7 Europe Malaga",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7europe.eu/hl7-europe-working-group-meeting-malaga-2026/"
    }]
  }],
  "description" : "When, relative to the run, a measurement was taken.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "pre-run",
    "display" : "Before the run",
    "definition" : "Baseline measurement taken at rest before the start."
  },
  {
    "code" : "during-run",
    "display" : "During the run",
    "definition" : "Measurement taken while running."
  },
  {
    "code" : "post-run",
    "display" : "After the run",
    "definition" : "Recovery measurement taken after the finish."
  }]
}

```
