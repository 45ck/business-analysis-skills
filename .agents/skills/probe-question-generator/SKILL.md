---
name: "probe-question-generator"
pack: "business-analysis-pack"
purpose: "Generate follow-up probe questions that push past generic answers into evidence, examples, rules, edge cases, and pain points."
inputs: ["base questions", "analysis theme", "stakeholder type", "current answers if any"]
outputs: ["probe question set", "probe rationale", "likely signal targets"]
handoffs: ["interview-plan-designer", "business-rule-extractor", "as-is-process-investigator"]
---
# probe-question-generator

## Purpose
Generate follow-up probe questions that push past generic answers into evidence, examples, rules, edge cases, and pain points.

## Trigger this skill when
- Base questions are too shallow.
- Stakeholders are likely to answer with generic or overly polished statements.
- You need evidence-oriented follow-ups.

## Expected inputs
- base questions
- analysis theme
- stakeholder type
- current answers if any

## Deliverables
- probe question set
- probe rationale
- likely signal targets

## Operating procedure
1. Review the base questions and identify where generic answers are likely.
2. Generate probes for examples, exceptions, timings, frequency, triggers, approval rules, data, handoffs, and failure cases.
3. Tailor probes to stakeholder vocabulary and likely blind spots.
4. Tag each probe with what it is trying to uncover.
5. Sequence probes from least to most challenging.

## Quality gates
- Probes seek observable detail.
- Probes do not become hostile or leading.
- Each probe is tied to a signal target.

## Handoff targets
- interview-plan-designer
- business-rule-extractor
- as-is-process-investigator

## Output style
- Be explicit about uncertainty.
- Prefer structured outputs over loose prose.
- Separate confirmed findings, inferred findings, and open questions.
- Preserve source context where practical.

## Failure modes to avoid
- Do not pretend weak evidence is confirmed fact.
- Do not confuse stakeholder opinion with validated rule or process truth.
- Do not hide missing coverage behind polished wording.
- Do not flatten politically different stakeholders into one generic audience.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Risks or tensions
## Open questions
## Recommended next skill
```
