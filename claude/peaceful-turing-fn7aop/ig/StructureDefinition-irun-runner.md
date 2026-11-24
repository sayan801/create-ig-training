# Interoperability Run - runner - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interoperability Run - runner**

## Resource Profile: Interoperability Run - runner 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner | *Version*:0.1.0 |
| Draft as of 2026-11-24 | *Computable Name*:IRunRunner |

 
A participant of the Interoperability Run. Inherits from the HL7 Europe Patient (EU core) profile, which requires a name and a birth date. 

**Usages:**

* Refer to this Profile: [Interoperability Run - appointment](StructureDefinition-irun-appointment.md), [Interoperability Run - ECG](StructureDefinition-irun-ecg.md), [Interoperability Run - exercise session](StructureDefinition-irun-exercise-session.md), [Interoperability Run - heart rate](StructureDefinition-irun-heart-rate.md)... Show 4 more, [Interoperability Run - oxygen saturation (SpO2)](StructureDefinition-irun-oxygen-saturation.md), [Interoperability Run - preventive care plan](StructureDefinition-irun-preventive-careplan.md), [Interoperability Run - participant report](StructureDefinition-irun-report.md) and [Interoperability Run - wearable device](StructureDefinition-irun-wearable-device.md)
* Examples for this Profile: [Patient/runner-example](Patient-runner-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/org.fhir.eu.interoperabilityrun|current/StructureDefinition/StructureDefinition-irun-runner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-irun-runner.csv), [Excel](StructureDefinition-irun-runner.xlsx), [Schematron](StructureDefinition-irun-runner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "irun-runner",
  "url" : "https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner",
  "version" : "0.1.0",
  "name" : "IRunRunner",
  "title" : "Interoperability Run - runner",
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
  "description" : "A participant of the Interoperability Run. Inherits from the HL7 Europe Patient (EU core) profile, which requires a name and a birth date.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core|2.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Runner bib number (and any other identifiers)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    }]
  }
}

```
