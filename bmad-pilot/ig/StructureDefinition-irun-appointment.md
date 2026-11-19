# Interoperability Run - appointment - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - appointment**

## Resource Profile: Interoperability Run - appointment 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-appointment | *Version*:0.1.0 |
| Draft as of 2026-11-19 | *Computable Name*:IRunAppointment |

 
The scheduled Interoperability Run (or a preventive check-up slot around it) with the runner and the meeting location. 

**Usages:**

* Refer to this Profile: [Interoperability Run - preventive care plan](StructureDefinition-irun-preventive-careplan.md)
* Examples for this Profile: [Appointment/run-appointment-example](Appointment-run-appointment-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-appointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-appointment.csv), [Excel](StructureDefinition-irun-appointment.xlsx), [Schematron](StructureDefinition-irun-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-appointment",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-appointment",
  "version" : "0.1.0",
  "name" : "IRunAppointment",
  "title" : "Interoperability Run - appointment",
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
  "description" : "The scheduled Interoperability Run (or a preventive check-up slot around it) with the runner and the meeting location.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.description",
      "path" : "Appointment.description",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "actor.resolve()"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:runner",
      "path" : "Appointment.participant",
      "sliceName" : "runner",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:runner.actor",
      "path" : "Appointment.participant.actor",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner|0.1.0"]
      }]
    },
    {
      "id" : "Appointment.participant:location",
      "path" : "Appointment.participant",
      "sliceName" : "location",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:location.actor",
      "path" : "Appointment.participant.actor",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-location|0.1.0"]
      }]
    }]
  }
}

```
