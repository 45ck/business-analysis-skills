---
name: proto-requirements-normalizer
description: Normalise rough issue text, chat threads, meeting bullets, emails, voice-note transcripts, or client messages into a structured proto-spec — problem, actors, goals, behaviours, constraints, risks, open questions — with provisional requirement IDs and uncertainty preserved, as a clean starting point before formal analysis. Use this skill whenever requirements exist only in messy notes or chat, the user pastes raw meeting notes or a client message and asks to "make sense of this", "structure this", "turn this into requirements", or "clean this up", a ticket or issue needs structure fast, or other analysis skills need a tidy input — even if they never say "requirements". Part of the requirements-discovery pack; hands off to problem-statement-refiner, requirements-interrogator, and functional-vs-nonfunctional-splitter.
---

# proto-requirements-normalizer

Turn raw, messy input into an organised first draft that keeps what people actually said, marks what is uncertain, and gives every item an ID so later work can refer to it.

**Language:** reply in the language the user writes in. Quote the raw notes verbatim in their original language.

## When to use

- Requirements exist only in notes, chat, emails, or tickets.
- A stakeholder message or meeting needs structure quickly.
- Other skills in the pack need a clean starting point.

Do not use for: polishing an already structured spec (use ambiguity-hunter or requirements-quality-check), writing a sharp problem statement (problem-statement-refiner), or final classification into FR/NFR (functional-vs-nonfunctional-splitter). This skill is the first pass, deliberately provisional.

## Inputs

Raw notes, messages, issue text, meeting bullets, transcripts. Record who said what where the source shows it; attribution matters when stakeholders disagree.

## Grouping buckets

Problem / pain · Actors and stakeholders · Goals and outcomes · Behaviours (what should happen) · Data and information · Constraints · Risks and concerns · Decisions already made · Open questions · Noise (off-topic, kept out).

## Procedure

1. **Read everything once** and list the topics covered; note if the notes span several unrelated topics (then normalise each separately).
2. **Group fragments** into the buckets above, keeping a reference to the original fragment.
3. **Rewrite fragments** into clean, requirement-like statements without adding certainty: keep hedges ("probably", "maybe", "X thinks") as explicit uncertainty markers.
4. **Mark certainty** for each item: **Stated** (clearly said), **Tentative** (hedged, single voice, or "we'll see"), **Inferred** (your reading; say why).
5. **Preserve disagreement**: if people said different things, keep both versions with attribution.
6. **Assign provisional IDs**: P-REQ-001, ... for behaviours; P-CON-, P-RISK-, P-Q- for others. "P-" signals provisional; later skills can promote them to FR-/NFR- IDs.
7. **List unknowns** that the notes raise but do not answer.
8. **Run the quality gates**, then produce the output.

## Writing rules

- No invented certainty: never turn "maybe" into "must".
- Preserve raw-note intent; when unsure what was meant, quote and ask.
- One idea per item; split fragments that mix several.
- Decisions already made are recorded as decisions, with who made them if known.
- Keep the output structured enough for other skills to consume.

## Quality gates

- No invented certainty; every item has a certainty mark.
- Raw-note intent is preserved and each item references its fragment.
- Disagreements are kept with attribution.
- Every item has a provisional ID.
- Unknowns are listed.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
What the notes are about, number of items per bucket, biggest unknowns.

## Findings
Topics covered, contradictions between participants, large gaps.

## Structured outputs
### Normalised proto-spec
#### Problem / pain
#### Actors and stakeholders
#### Goals and outcomes
#### Behaviours
| ID | Statement | Certainty | Said by | Source fragment |
|---|---|---|---|---|
#### Data and information
#### Risks and concerns
#### Decisions already made
### Unknowns list

## Assumptions
## Constraints
## Open questions

## Recommended next skill
problem-statement-refiner to sharpen the problem; requirements-interrogator to probe the behaviours; functional-vs-nonfunctional-splitter to classify them.
```

## Example

Raw notes: "Anna: clients keep calling about delivery status. Maybe SMS? Tom thinks email is enough. Need it before Black Friday. IT says the courier API is 'flaky'."

- Problem (Stated, Anna): clients call support to ask about delivery status.
- **P-REQ-001** (Tentative): clients receive delivery status updates proactively. Channel disputed: SMS (Anna, "maybe") vs email (Tom).
- **P-CON-001** (Stated, deadline): available before Black Friday — exact date [TBD].
- **P-RISK-001** (Stated, IT): courier API reliability is poor ("flaky"); impact on accuracy unknown.
- **P-Q-001**: how many calls per week are about delivery status?

## Handoffs

- **problem-statement-refiner**: to turn the problem bucket into a sharp statement.
- **requirements-interrogator**: to probe and pressure-test behaviours.
- **functional-vs-nonfunctional-splitter**: to classify the items formally.

## Failure modes to avoid

- Turning tentative remarks into firm requirements.
- Losing who said what when people disagree.
- Silently dropping fragments that do not fit; put them in Noise or Unknowns.
- Over-polishing so the draft looks final.
- Collapsing functional, non-functional, and business-rule concerns into one blob.
