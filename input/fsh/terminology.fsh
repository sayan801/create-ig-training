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
