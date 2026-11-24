# Example wearable device - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example wearable device**

## Example Device: Example wearable device

Profile: [Interoperability Run - wearable device](StructureDefinition-irun-wearable-device.md)

**manufacturer**: Example Wearables Ltd

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Example smartwatch | User Friendly name |

**modelNumber**: SW-1

**type**: Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG

**patient**: [Alex Runner Other, DoB: 1985-04-12 ( https://example.org/ig/interoperabilityrun/bib#MLG26-042)](Patient-runner-example.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "wearable-example",
  "meta" : {
    "profile" : ["https://example.org/ig/interoperabilityrun/StructureDefinition/irun-wearable-device"]
  },
  "manufacturer" : "Example Wearables Ltd",
  "deviceName" : [{
    "name" : "Example smartwatch",
    "type" : "user-friendly-name"
  }],
  "modelNumber" : "SW-1",
  "type" : {
    "text" : "Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG"
  },
  "patient" : {
    "reference" : "Patient/runner-example"
  }
}

```
