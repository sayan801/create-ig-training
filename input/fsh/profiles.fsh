Profile: IRunRunner
Parent: $PatientEuCore
Id: irun-runner
Title: "Interoperability Run - runner"
Description: "A participant of the Interoperability Run. Inherits from the HL7 Europe Patient (EU core) profile, which requires a name and a birth date."
* identifier 1..* MS
* identifier ^short = "Runner bib number (and any other identifiers)"
* name MS
* birthDate MS
* gender MS

Profile: IRunWearableDevice
Parent: Device
Id: irun-wearable-device
Title: "Interoperability Run - wearable device"
Description: "A wearable device (smartwatch, chest strap, pulse oximeter, single-lead ECG) worn by the runner."
* deviceName 1..* MS
* manufacturer MS
* modelNumber MS
* type 1..1 MS
* patient 1..1 MS
* patient only Reference(IRunRunner)

Profile: IRunHeartRate
Parent: $HeartRate
Id: irun-heart-rate
Title: "Interoperability Run - heart rate"
Description: "Heart rate measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs heart rate profile."
* extension contains IRunContext named runContext 1..1 MS
* subject only Reference(IRunRunner)
* device 1..1 MS
* device only Reference(IRunWearableDevice)

Profile: IRunOxygenSaturation
Parent: $OxygenSat
Id: irun-oxygen-saturation
Title: "Interoperability Run - oxygen saturation (SpO2)"
Description: "Peripheral oxygen saturation (SpO2) measured by a wearable device during an Interoperability Run. Based on the FHIR core vital signs oxygen saturation profile."
* extension contains IRunContext named runContext 1..1 MS
* subject only Reference(IRunRunner)
* device 1..1 MS
* device only Reference(IRunWearableDevice)

Profile: IRunECG
Parent: Observation
Id: irun-ecg
Title: "Interoperability Run - ECG"
Description: "An ECG recording (e.g. single-lead from a smartwatch) taken during an Interoperability Run. The waveform is carried as SampledData in one component per lead, coded with ISO/IEEE 11073 MDC codes."
* extension contains IRunContext named runContext 1..1 MS
* status MS
* category 1..* MS
* category = $obs-category#procedure
* code = $loinc#11524-6 "EKG study"
* subject 1..1 MS
* subject only Reference(IRunRunner)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* device 1..1 MS
* device only Reference(IRunWearableDevice)
* component 1..* MS
* component ^short = "One component per ECG lead"
* component.code MS
* component.code ^short = "ECG lead, e.g. MDC 131329 (lead I)"
* component.value[x] 1..1 MS
* component.value[x] only SampledData
