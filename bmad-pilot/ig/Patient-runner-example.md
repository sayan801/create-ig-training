# Example runner - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example runner**

## Example Patient: Example runner

Profile: [Interoperability Run - runner](StructureDefinition-irun-runner.md)

Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "runner-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-runner"]
  },
  "identifier" : [{
    "system" : "https://example.org/ig/interoperabilityrun/bib",
    "value" : "MLG26-042"
  }],
  "name" : [{
    "family" : "Runner",
    "given" : ["Alex"]
  }],
  "gender" : "other",
  "birthDate" : "1985-04-12"
}

```
