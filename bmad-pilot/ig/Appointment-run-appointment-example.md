# Example appointment: Interoperability Run - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example appointment: Interoperability Run**

## Example Appointment: Example appointment: Interoperability Run

Profile: [Interoperability Run - appointment](StructureDefinition-irun-appointment.md)

**status**: Booked

**serviceType**: Interoperability Run

**description**: Interoperability Run - HL7 Europe WGM Malaga 2026, meeting point in front of the hotel

**start**: 2026-11-18 07:30:00+0100

**end**: 2026-11-18 08:15:00+0100

> **participant****actor**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)**status**: Accepted

> **participant****actor**: [Malaga seafront run course](Location-malaga-course-example.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "run-appointment-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-appointment"]
  },
  "status" : "booked",
  "serviceType" : [{
    "text" : "Interoperability Run"
  }],
  "description" : "Interoperability Run - HL7 Europe WGM Malaga 2026, meeting point in front of the hotel",
  "start" : "2026-11-18T07:30:00+01:00",
  "end" : "2026-11-18T08:15:00+01:00",
  "participant" : [{
    "actor" : {
      "reference" : "Patient/runner-example"
    },
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "Location/malaga-course-example"
    },
    "status" : "accepted"
  }]
}

```
