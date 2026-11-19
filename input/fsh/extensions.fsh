Extension: IRunContext
Id: irun-context
Title: "Interoperability Run context"
Description: "Links an observation to the Interoperability Run in which it was recorded: the event, its name and the measurement phase."
Context: Observation
* extension contains
    eventType 1..1 MS and
    eventName 0..1 MS and
    phase 0..1 MS and
    location 0..1 MS
* extension[eventType] ^short = "Type of event (WGM, Connectathon, DevDays...)"
* extension[eventType].value[x] only Coding
* extension[eventType].valueCoding from IRunEventTypeVS (required)
* extension[eventName] ^short = "Name of the event, e.g. HL7 Europe WGM Malaga 2026"
* extension[eventName].value[x] only string
* extension[phase] ^short = "Before, during or after the run"
* extension[phase].value[x] only Coding
* extension[phase].valueCoding from IRunPhaseVS (required)
* extension[location] ^short = "Where the run took place (course / meeting point)"
* extension[location].value[x] only Reference(IRunLocation)
