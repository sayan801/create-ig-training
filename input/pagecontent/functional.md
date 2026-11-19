### Use cases

1. **Baseline before the run:** the runner records resting heart rate and SpO2 (phase `pre-run`).
2. **During the run:** the wearable streams or stores heart rate and SpO2 (phase `during-run`).
3. **Recovery after the run:** the runner records heart rate and an optional single-lead ECG strip (phase `post-run`).
4. **Event dashboard:** the organisers collect the observations from all runners of an event (WGM, Connectathon, DevDays) and show, for example, average heart rate per phase.

### Data flow

```
Wearable -> vendor app / phone -> FHIR client -> collector FHIR server -> event dashboard
```

Each observation carries the [Interoperability Run context](StructureDefinition-irun-context.html) extension:

* **eventType:** WGM, Connectathon, DevDays or other ([value set](ValueSet-irun-event-type.html))
* **eventName:** for example "HL7 Europe WGM Malaga 2026"
* **phase:** before, during or after the run ([value set](ValueSet-irun-phase.html))
