Instance: runner-example
InstanceOf: IRunRunner
Title: "Example runner"
Description: "A fictional participant of the Interoperability Run at the HL7 Europe WGM Malaga 2026."
Usage: #example
* identifier.system = "https://example.org/ig/interoperabilityrun/bib"
* identifier.value = "MLG26-042"
* name.family = "Runner"
* name.given = "Alex"
* gender = #other
* birthDate = "1985-04-12"

Instance: wearable-example
InstanceOf: IRunWearableDevice
Title: "Example wearable device"
Description: "A fictional smartwatch with optical heart rate, SpO2 and single-lead ECG."
Usage: #example
* deviceName.name = "Example smartwatch"
* deviceName.type = $device-name-type#user-friendly-name
* manufacturer = "Example Wearables Ltd"
* modelNumber = "SW-1"
* type.text = "Wrist-worn fitness tracker with heart rate, SpO2 and single-lead ECG"
* patient = Reference(runner-example)

Instance: heart-rate-during-run-example
InstanceOf: IRunHeartRate
Title: "Example heart rate during the run"
Description: "Heart rate of the runner during the Interoperability Run at the HL7 Europe WGM Malaga 2026."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#during-run
* status = #final
* subject = Reference(runner-example)
* effectiveDateTime = "2026-11-18T07:45:00+01:00"
* valueQuantity = 152 '/min' "beats/minute"
* device = Reference(wearable-example)

Instance: heart-rate-pre-run-example
InstanceOf: IRunHeartRate
Title: "Example resting heart rate before the run"
Description: "Baseline heart rate of the runner before the start."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#pre-run
* status = #final
* subject = Reference(runner-example)
* effectiveDateTime = "2026-11-18T07:25:00+01:00"
* valueQuantity = 64 '/min' "beats/minute"
* device = Reference(wearable-example)

Instance: spo2-during-run-example
InstanceOf: IRunOxygenSaturation
Title: "Example SpO2 during the run"
Description: "Oxygen saturation of the runner during the Interoperability Run."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#during-run
* status = #final
* subject = Reference(runner-example)
* effectiveDateTime = "2026-11-18T07:45:00+01:00"
* valueQuantity = 96 '%' "%"
* device = Reference(wearable-example)

Instance: ecg-post-run-example
InstanceOf: IRunECG
Title: "Example single-lead ECG after the run"
Description: "A short single-lead (lead I) ECG strip recorded by the smartwatch right after the finish. The data are illustrative, not clinical."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#post-run
* status = #final
* category = $obs-category#procedure "Procedure"
* code = $loinc#11524-6 "EKG study"
* subject = Reference(runner-example)
* effectivePeriod.start = "2026-11-18T08:05:00+01:00"
* effectivePeriod.end = "2026-11-18T08:05:30+01:00"
* device = Reference(wearable-example)
* component[0].code = $mdc#131329 "MDC_ECG_ELEC_POTL_I"
* component[0].valueSampledData.origin = 0 'mV' "mV"
* component[0].valueSampledData.period = 2
* component[0].valueSampledData.factor = 1
* component[0].valueSampledData.dimensions = 1
* component[0].valueSampledData.data = "0.02 0.03 0.05 0.04 0.02 -0.05 1.10 -0.30 0.01 0.08 0.15 0.12 0.05 0.02"
