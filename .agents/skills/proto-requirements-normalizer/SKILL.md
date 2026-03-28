---
name: "proto-requirements-normalizer"
pack: "requirements-discovery-pack"
purpose: "Normalize rough issue text, chat notes, meeting bullets, or client messages into a usable proto-spec before formal analysis."
inputs: ["raw notes", "messages", "issue text", "meeting bullets"]
outputs: ["normalized proto-spec", "structured bullets", "unknowns list", "candidate requirement IDs"]
handoffs: ["problem-statement-refiner", "requirements-interrogator", "functional-vs-nonfunctional-splitter"]
---
# proto-requirements-normalizer

## Purpose
Normalize rough issue text, chat notes, meeting bullets, or client messages into a usable proto-spec before formal analysis.

## Trigger this skill when
- Requirements exist only in messy notes or chat.
- A repo issue or stakeholder message needs structure fast.
- You need a clean starting point for the rest of the pack.

## Expected inputs
- raw notes
- messages
- issue text
- meeting bullets

## Deliverables
- normalized proto-spec
- structured bullets
- unknowns list
- candidate requirement IDs

## Operating procedure
1. Group raw notes into problem, actors, goals, behaviors, constraints, risks, and open questions.
2. Rewrite fragments into clean requirement-like statements without pretending certainty.
3. Preserve uncertainty explicitly.
4. Assign provisional IDs so later artifacts can refer to them.

## Quality gates
- No invented certainty.
- Raw note intent is preserved.
- The output is structured enough to feed other skills.

## Handoff targets
- problem-statement-refiner
- requirements-interrogator
- functional-vs-nonfunctional-splitter

## Output style
- Be explicit about uncertainty.
- Prefer short, testable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not invent stakeholder intent.
- Do not convert preferences into mandatory requirements without evidence.
- Do not hide unresolved ambiguity behind polished wording.
- Do not collapse functional, non-functional, and business rule concerns into one blob.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Assumptions
## Constraints
## Open questions
## Recommended next skill
```
