# Interoperability Run IG - instructions for AI agents

FHIR R4 implementation guide written in FSH. Planning documents (BMAD method) are in `_bmad-output/planning-artifacts/` (brief, PRD, architecture); stories are GitHub issues, indexed in `_bmad-output/implementation-artifacts/epics-and-stories.md`.

## Roles
- **The IG editor (a human) makes modelling decisions.** The agent proposes and implements; it does not decide new profiles, cardinalities, bindings or parents on its own. Record decisions in `architecture.md`.
- Before writing FSH for a story, present a short plan and wait for the editor to confirm or correct it.

## Commands
- Compile: `sushi build .`
- Full build and QA: `./_updatePublisher.sh` (once), then `./_genonce.sh`; read `output/qa.json` and `output/qa.html`
- Look up a code: `https://tx.fhir.org/r4/CodeSystem/$lookup?system=<system>&code=<code>`; validate a UCUM unit with `CodeSystem/$validate-code?url=http://unitsofmeasure.org&code=<unit>`

## Definition of done (every story)
1. SUSHI: 0 errors, 0 warnings.
2. Every new or changed profile has at least one example, and it validates.
3. IG Publisher `qa.json`: 0 errors; any remaining warning is justified in `input/ignoreWarnings.txt` with a comment.
4. **Never use a code, display or canonical from memory.** Look it up (terminology server, package or specification) and add it to the "Code verification" table on the Implementation page.
5. Pages updated (Home / Functional / Implementation) and the development record updated.
6. One branch and pull request per story; a named human reviews the diff and the rendered pages. Do not let passing QA be the goal.
7. Report at the end: what changed, final error / warning counts, open warnings, open questions.

## Conventions
- Names `IRun<Concept>`, ids `irun-<concept>`; FSH files: `aliases.fsh`, `profiles.fsh`, `extensions.fsh`, `terminology.fsh`, `examples.fsh`.
- Examples are fictional and marked "not for clinical use".
- **This repository is public.** No personal data, phone numbers, private names or internal business information in code, pages, issues or commits.
