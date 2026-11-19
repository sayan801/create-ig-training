<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
This Implementation Guide captures vital-sign observations (heart rate, oxygen saturation and ECG) recorded by wearable devices during the <b>Interoperability Run</b>: the community run held at HL7 Working Group Meetings, Connectathons and DevDays.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>This Implementation Guide is not the current version. It is the continuous integration version, subject to frequent changes and intended only to follow ongoing work. The current version will be available via the canonical URL after the first release: https://example.org/ig/interoperabilityrun</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Warning!</b>
  <br>
 This Implementation Guide is currently open for public comment. The current version is available at: https://example.org/ig/interoperabilityrun
</p>
</blockquote>
</div>
{% endif %}


<!--  Uncomment if CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="CI-SIS logo" style="width:100%;">
</div>
-->

### Introduction

When the FHIR community meets (HL7 Working Group Meetings, Connectathons, DevDays), many participants join an early-morning **Interoperability Run**. Most runners wear a smartwatch, chest strap or pulse oximeter that records their vital signs.

This IG shows how to exchange those measurements in FHIR, so that data from different devices and apps can be pooled, compared and visualised for each event. It is also a small, fun training example of how to build an IG with FSH, SUSHI and the IG Publisher on top of the **HL7 Europe base profiles**.

### Scope

* **In scope:** heart rate, peripheral oxygen saturation (SpO2) and ECG recordings taken before, during and after the run, with the event and measurement phase.
* **Out of scope:** clinical interpretation, diagnosis, GPS tracks, pace and distance (they could be added later, e.g. with Observation or Device metrics).

All data in this guide are fictional and are **not intended for clinical use**.

### Content

* [Introduction](introduction.html): context and actors
* [Functional](functional.html): use cases and data flow
* [Implementation](implementation.html): profiles, terminology and examples
* [Artifacts](artifacts.html): all profiles, extensions, terminology and examples

### Dependencies

{% lang-fragment dependency-table.xhtml %}

### Intellectual property

{% lang-fragment ip-statements.xhtml %}
