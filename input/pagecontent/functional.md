### Use cases

0. **Plan:** the runner has a [preventive care plan](StructureDefinition-irun-preventive-careplan.html) (vital signs before and after, join the run) and an [appointment](StructureDefinition-irun-appointment.html) for the run at a given [location](StructureDefinition-irun-location.html).

1. **Baseline before the run:** the runner records resting heart rate and SpO2 (phase `pre-run`).
2. **During the run:** the wearable streams or stores heart rate and SpO2 (phase `during-run`).
3. **Recovery after the run:** the runner records heart rate and an optional single-lead ECG strip (phase `post-run`).
4. **Run summary:** an [exercise session](StructureDefinition-irun-exercise-session.html) observation records where the run took place, how long it lasted, the distance and the average pace.
5. **Conditions:** an [environmental conditions](StructureDefinition-irun-environment-conditions.html) observation on the course records air temperature, humidity and, for swimmers, water temperature.
6. **Participant report:** a [report](StructureDefinition-irun-report.html) (DiagnosticReport) brings together the vital signs, ECG, session and conditions with a short conclusion.
7. **Event dashboard:** the organisers collect the observations from all runners of an event (WGM, Connectathon, DevDays) and show, for example, average heart rate per phase.

### Data flow

```
Wearable -> vendor app / phone -> FHIR client -> collector FHIR server -> event dashboard
```

Each observation carries the [Interoperability Run context](StructureDefinition-irun-context.html) extension:

* **eventType:** WGM, Connectathon, DevDays or other ([value set](ValueSet-irun-event-type.html))
* **eventName:** for example "HL7 Europe WGM Malaga 2026"
* **phase:** before, during or after the run ([value set](ValueSet-irun-phase.html))
* **location:** the run course ([IRunLocation](StructureDefinition-irun-location.html))

### Resource overview

```
CarePlan (preventive check-up)
  |-- activity -> Appointment (the run) -> Location (course)
  |-- activity: heart rate, SpO2, ECG
Observations (HR, SpO2, ECG, exercise session) -> Patient (runner), Device (wearable), run context -> Location
Observation (environmental conditions) -> Location (course)
DiagnosticReport (participant report) -> all of the above observations
```
