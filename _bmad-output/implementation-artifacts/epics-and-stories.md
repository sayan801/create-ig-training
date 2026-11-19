---
title: Interoperability Run IG - Epics and stories
status: active
created: 2026-11-19
updated: 2026-11-19
---

# Epics and stories

Stories are tracked as GitHub issues in this repository; this file is the index. One pull request per story, reviewed by a named human (see `CLAUDE.md`).

## Epic 1: v0.1 core model (done)
Issues #2–#15, merged in PR #1.

## Epic 2: Quality and transparency (open)
| Story | Issue | Acceptance criteria |
|---|---|---|
| Run the IG Publisher locally; QA errors to 0 | #16 | `_genonce.sh` runs; `output/qa.json` errs = 0; warnings justified in `input/ignoreWarnings.txt` |
| Validate the examples with Matchbox | #17 | Every example in `fsh-generated/resources/` validated; results recorded; findings fixed |
| "How this guide was developed" page | #18 | Page lists requests / feedback rounds, tools, checks and reviewers |

## Epic 3: Standard terminology (open)
| Story | Issue | Acceptance criteria |
|---|---|---|
| Replace local codes with standard codes where possible | #19 | Candidates looked up on a terminology server; editor decides per code; verification table updated |
