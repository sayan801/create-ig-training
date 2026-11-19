CodeSystem: IRunEventTypeCS
Id: irun-event-type
Title: "Interoperability Run - event type"
Description: "The kind of community event at which an Interoperability Run takes place."
* ^caseSensitive = true
* ^experimental = true
* #wgm "HL7 Working Group Meeting" "An HL7 International or HL7 Europe Working Group Meeting."
* #connectathon "Connectathon" "An HL7 FHIR Connectathon or IHE Connectathon."
* #devdays "FHIR DevDays" "A FHIR DevDays conference."
* #other "Other event" "Any other community event hosting an Interoperability Run."

CodeSystem: IRunPhaseCS
Id: irun-phase
Title: "Interoperability Run - measurement phase"
Description: "When, relative to the run, a measurement was taken."
* ^caseSensitive = true
* ^experimental = true
* #pre-run "Before the run" "Baseline measurement taken at rest before the start."
* #during-run "During the run" "Measurement taken while running."
* #post-run "After the run" "Recovery measurement taken after the finish."

ValueSet: IRunEventTypeVS
Id: irun-event-type
Title: "Interoperability Run - event types"
Description: "All event types for an Interoperability Run."
* ^experimental = true
* include codes from system IRunEventTypeCS

ValueSet: IRunPhaseVS
Id: irun-phase
Title: "Interoperability Run - measurement phases"
Description: "All measurement phases for an Interoperability Run."
* ^experimental = true
* include codes from system IRunPhaseCS

CodeSystem: IRunExerciseCS
Id: irun-exercise
Title: "Interoperability Run - exercise codes"
Description: "Codes for the run session and its measurements where no suitable LOINC code is used in this training IG."
* ^caseSensitive = true
* ^experimental = true
* #run-session "Run session" "A completed Interoperability Run session (exercise summary)."
* #distance "Distance run" "Total distance covered during the run."
* #average-pace "Average pace" "Average time per kilometre."
* #swim-session "Swim session" "A completed swim session (e.g. an open-water swim alongside the run)."
* #environment-conditions "Environmental conditions" "Weather and water conditions at the course during the event."
* #air-temperature "Air temperature" "Outdoor air temperature at the course."
* #relative-humidity "Relative humidity" "Outdoor relative air humidity at the course."
* #water-temperature "Water temperature" "Water temperature for swimmers."
* #run-report "Interoperability Run report" "Summary report of a participant's run: vital signs, ECG, session and conditions."
* #preventive-checkup "Preventive check-up" "Preventive care check-up around the Interoperability Run (vital signs before and after the run)."

ValueSet: IRunSessionTypeVS
Id: irun-session-type
Title: "Interoperability Run - session types"
Description: "Kinds of exercise session: run or swim."
* ^experimental = true
* IRunExerciseCS#run-session
* IRunExerciseCS#swim-session
