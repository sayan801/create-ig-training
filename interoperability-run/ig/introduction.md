# Introduction - Interoperability Run IG v0.1.0

* [**Table of Contents**](toc.md)
* **Introduction**

## Introduction

### Introduction

The **Interoperability Run** is an informal run for participants of FHIR community events. It is a good opportunity to show interoperability in practice: runners use wearables from many vendors, and their data usually stay locked in each vendor's app.

### Actors

* **Runner:** an event participant who wears one or more devices. Profiled as [IRunRunner](StructureDefinition-irun-runner.md), which inherits from the HL7 Europe Patient profile (`patient-eu-core`).
* **Wearable device:** a smartwatch, chest strap, pulse oximeter or single-lead ECG. Profiled as [IRunWearableDevice](StructureDefinition-irun-wearable-device.md).
* **Run course / location:** the meeting point and course. Profiled as [IRunLocation](StructureDefinition-irun-location.md).
* **Collector app / FHIR server:** receives the observations from the runners' apps (after the runner's consent) and makes them available for the event dashboard.
* **Dashboard / viewer:** shows aggregated or individual results per event.

### Privacy

Runners take part voluntarily. Only a bib number, a name and a birth date are needed. Sharing should be based on explicit consent, and dashboards should show pseudonymised or aggregated data.

