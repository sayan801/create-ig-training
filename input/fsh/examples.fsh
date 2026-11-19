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
* extension[runContext].extension[location].valueReference = Reference(malaga-course-example)
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
* extension[runContext].extension[location].valueReference = Reference(malaga-course-example)
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

Instance: malaga-course-example
InstanceOf: IRunLocation
Title: "Example run course: Malaga seafront"
Description: "Fictional meeting point and course for the Interoperability Run at the HL7 Europe WGM Malaga 2026."
Usage: #example
* status = #active
* name = "Malaga seafront run course"
* description = "Meeting point in front of the meeting hotel; out-and-back course along the seafront (illustrative)."
* address.city = "Malaga"
* address.country = "ES"
* position.latitude = 36.7177
* position.longitude = -4.4258

Instance: exercise-session-example
InstanceOf: IRunExerciseSession
Title: "Example run session"
Description: "Summary of the runner's Interoperability Run: place, duration and distance."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#during-run
* extension[runContext].extension[location].valueReference = Reference(malaga-course-example)
* status = #final
* code = IRunExerciseCS#run-session
* subject = Reference(runner-example)
* effectivePeriod.start = "2026-11-18T07:30:00+01:00"
* effectivePeriod.end = "2026-11-18T08:02:00+01:00"
* device = Reference(wearable-example)
* component[duration].valueQuantity.value = 32
* component[distance].valueQuantity.value = 5.2
* component[averagePace].valueQuantity.value = 6.15

Instance: run-appointment-example
InstanceOf: IRunAppointment
Title: "Example appointment: Interoperability Run"
Description: "The scheduled Interoperability Run on Wednesday morning at the HL7 Europe WGM Malaga 2026."
Usage: #example
* status = #booked
* serviceType.text = "Interoperability Run"
* description = "Interoperability Run - HL7 Europe WGM Malaga 2026, meeting point in front of the hotel"
* start = "2026-11-18T07:30:00+01:00"
* end = "2026-11-18T08:15:00+01:00"
* participant[runner].actor = Reference(runner-example)
* participant[runner].status = #accepted
* participant[location].actor = Reference(malaga-course-example)
* participant[location].status = #accepted

Instance: preventive-careplan-example
InstanceOf: IRunPreventiveCarePlan
Title: "Example preventive care plan"
Description: "A runner's preventive check-up plan around the Interoperability Run: resting vital signs before, join the run, recovery vital signs and ECG after."
Usage: #example
* status = #active
* intent = #plan
* title = "Interoperability Run preventive check-up"
* description = "Measure resting heart rate and SpO2 before the run, join the run, then record recovery heart rate and a single-lead ECG after the finish."
* subject = Reference(runner-example)
* period.start = "2026-11-18T07:00:00+01:00"
* period.end = "2026-11-18T09:00:00+01:00"
* activity[0].reference = Reference(run-appointment-example)
* activity[1].detail.code = $loinc#8867-4 "Heart rate"
* activity[1].detail.status = #completed
* activity[1].detail.description = "Resting and recovery heart rate (before and after the run)"
* activity[2].detail.code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* activity[2].detail.status = #completed
* activity[2].detail.description = "SpO2 before and during the run"
* activity[3].detail.code = $loinc#11524-6 "EKG study"
* activity[3].detail.status = #completed
* activity[3].detail.description = "Single-lead ECG right after the finish"

Instance: environment-conditions-example
InstanceOf: IRunEnvironmentConditions
Title: "Example environmental conditions at the course"
Description: "Air temperature, humidity and sea water temperature at the Malaga seafront during the run (illustrative values)."
Usage: #example
* extension[runContext].extension[eventType].valueCoding = IRunEventTypeCS#wgm
* extension[runContext].extension[eventName].valueString = "HL7 Europe WGM Malaga 2026"
* extension[runContext].extension[phase].valueCoding = IRunPhaseCS#during-run
* extension[runContext].extension[location].valueReference = Reference(malaga-course-example)
* status = #final
* subject = Reference(malaga-course-example)
* effectiveDateTime = "2026-11-18T07:30:00+01:00"
* component[airTemperature].valueQuantity.value = 14
* component[relativeHumidity].valueQuantity.value = 72
* component[waterTemperature].valueQuantity.value = 18

Instance: run-report-example
InstanceOf: IRunReport
Title: "Example participant report"
Description: "The runner's Interoperability Run report: resting and running heart rate, SpO2, ECG after the run, run session and conditions."
Usage: #example
* status = #final
* subject = Reference(runner-example)
* effectivePeriod.start = "2026-11-18T07:25:00+01:00"
* effectivePeriod.end = "2026-11-18T08:05:30+01:00"
* issued = "2026-11-18T09:00:00+01:00"
* result[0] = Reference(heart-rate-pre-run-example)
* result[1] = Reference(heart-rate-during-run-example)
* result[2] = Reference(spo2-during-run-example)
* result[3] = Reference(ecg-post-run-example)
* result[4] = Reference(exercise-session-example)
* result[5] = Reference(environment-conditions-example)
* conclusion = "5.2 km in 32 min (6:09 min/km) at 14 °C and 72% humidity. Heart rate rose from 64 to 152 /min, SpO2 stayed at 96%. Illustrative data, not for clinical use."
