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

Profile: IRunLocation
Parent: Location
Id: irun-location
Title: "Interoperability Run - location"
Description: "The run course or meeting point of an Interoperability Run (e.g. a seafront promenade near the meeting venue)."
* name 1..1 MS
* description MS
* address MS
* position MS
* position ^short = "Start / meeting point coordinates"

Profile: IRunExerciseSession
Parent: Observation
Id: irun-exercise-session
Title: "Interoperability Run - exercise session"
Description: "Summary of the run itself: where it took place, how long it lasted and how far the runner went."
* extension contains IRunContext named runContext 1..1 MS
* status MS
* category 1..* MS
* category = $obs-category#activity
* code = IRunExerciseCS#run-session
* subject 1..1 MS
* subject only Reference(IRunRunner)
* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS
* device MS
* device only Reference(IRunWearableDevice)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    duration 1..1 MS and
    distance 1..1 MS and
    averagePace 0..1 MS
* component[duration].code = $loinc#55411-3 "Exercise duration"
* component[duration].value[x] only Quantity
* component[duration].valueQuantity = $ucum#min "min"
* component[distance].code = IRunExerciseCS#distance
* component[distance].value[x] only Quantity
* component[distance].valueQuantity = $ucum#km "km"
* component[averagePace].code = IRunExerciseCS#average-pace
* component[averagePace].value[x] only Quantity
* component[averagePace].valueQuantity = $ucum#min/km "min/km"

Profile: IRunAppointment
Parent: Appointment
Id: irun-appointment
Title: "Interoperability Run - appointment"
Description: "The scheduled Interoperability Run (or a preventive check-up slot around it) with the runner and the meeting location."
* status MS
* serviceType MS
* description MS
* start 1..1 MS
* end 1..1 MS
* participant MS
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant contains
    runner 0..* MS and
    location 0..1 MS
* participant[runner].actor 1..1
* participant[runner].actor only Reference(IRunRunner)
* participant[location].actor 1..1
* participant[location].actor only Reference(IRunLocation)

Profile: IRunPreventiveCarePlan
Parent: CarePlan
Id: irun-preventive-careplan
Title: "Interoperability Run - preventive care plan"
Description: "A light preventive care plan for a runner: check vital signs before and after the run and join the scheduled run."
* status MS
* intent MS
* category 1..* MS
* category = IRunExerciseCS#preventive-checkup
* title MS
* description MS
* subject 1..1 MS
* subject only Reference(IRunRunner)
* period MS
* activity MS
* activity.reference MS
* activity.reference only Reference(IRunAppointment)
* activity.detail MS
* activity.detail.code MS
* activity.detail.status MS
