# Interoperability Run - exercise codes - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - exercise codes**

## CodeSystem: Interoperability Run - exercise codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunExerciseCS |

 
Codes for the run session and its measurements where no suitable LOINC code is used in this training IG. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Interoperability Run - session types](ValueSet-irun-session-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "irun-exercise",
  "url" : "https://example.org/ig/interoperabilityrun/CodeSystem/irun-exercise",
  "version" : "0.1.0",
  "name" : "IRunExerciseCS",
  "title" : "Interoperability Run - exercise codes",
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
  "description" : "Codes for the run session and its measurements where no suitable LOINC code is used in this training IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "150",
      "display" : "Europe"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "run-session",
    "display" : "Run session",
    "definition" : "A completed Interoperability Run session (exercise summary)."
  },
  {
    "code" : "distance",
    "display" : "Distance run",
    "definition" : "Total distance covered during the run."
  },
  {
    "code" : "average-pace",
    "display" : "Average pace",
    "definition" : "Average time per kilometre."
  },
  {
    "code" : "swim-session",
    "display" : "Swim session",
    "definition" : "A completed swim session (e.g. an open-water swim alongside the run)."
  },
  {
    "code" : "environment-conditions",
    "display" : "Environmental conditions",
    "definition" : "Weather and water conditions at the course during the event."
  },
  {
    "code" : "air-temperature",
    "display" : "Air temperature",
    "definition" : "Outdoor air temperature at the course."
  },
  {
    "code" : "relative-humidity",
    "display" : "Relative humidity",
    "definition" : "Outdoor relative air humidity at the course."
  },
  {
    "code" : "water-temperature",
    "display" : "Water temperature",
    "definition" : "Water temperature for swimmers."
  },
  {
    "code" : "run-report",
    "display" : "Interoperability Run report",
    "definition" : "Summary report of a participant's run: vital signs, ECG, session and conditions."
  },
  {
    "code" : "preventive-checkup",
    "display" : "Preventive check-up",
    "definition" : "Preventive care check-up around the Interoperability Run (vital signs before and after the run)."
  }]
}

```
