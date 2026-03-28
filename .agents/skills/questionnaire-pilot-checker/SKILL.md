---
name: "questionnaire-pilot-checker"
pack: "business-analysis-pack"
purpose: "Review a draft questionnaire for ambiguity, bias, fatigue, ordering issues, and poor measurement design before distribution."
inputs: ["questionnaire draft", "target audience", "research goal"]
outputs: ["pilot review findings", "revised questionnaire notes", "risk flags", "recommended fixes"]
handoffs: ["questionnaire-designer", "stakeholder-communication-planner", "benefit-hypothesis-writer"]
---
# questionnaire-pilot-checker

## Purpose
Review a draft questionnaire for ambiguity, bias, fatigue, ordering issues, and poor measurement design before distribution.

## Trigger this skill when
- A questionnaire exists but has not been pressure-tested.
- You want to avoid distributing a flawed instrument.
- Early feedback suggests confusion or low response quality.

## Expected inputs
- questionnaire draft
- target audience
- research goal

## Deliverables
- pilot review findings
- revised questionnaire notes
- risk flags
- recommended fixes

## Operating procedure
1. Review the draft for ambiguity, jargon, double meanings, and leading language.
2. Check order effects, respondent burden, missing answer options, and broken logic.
3. Assess whether the wording fits the audience.
4. Recommend pilot changes before broader distribution.
5. Highlight questions that will be hard to analyze.

## Quality gates
- Findings are concrete and actionable.
- Bias and fatigue risks are visible.
- Review considers the audience, not just wording quality.

## Handoff targets
- questionnaire-designer
- stakeholder-communication-planner
- benefit-hypothesis-writer

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
