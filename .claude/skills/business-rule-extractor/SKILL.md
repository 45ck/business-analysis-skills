---
name: "business-rule-extractor"
pack: "business-analysis-pack"
purpose: "Extract explicit and implicit business rules from interviews, documents, process descriptions, and system behavior."
inputs: ["documents", "interview notes", "process notes", "system descriptions"]
outputs: ["business rules register", "rule sources", "rule ambiguities", "rule conflicts"]
handoffs: ["as-is-process-investigator", "to-be-process-designer", "requirements packs later"]
---
# business-rule-extractor

## Purpose
Extract explicit and implicit business rules from interviews, documents, process descriptions, and system behavior.

## Trigger this skill when
- Rules are scattered across documents, people, and legacy behavior.
- Stakeholders speak in examples but the underlying rules are unclear.
- The process depends on approvals, eligibility logic, exceptions, or policy constraints.

## Expected inputs
- documents
- interview notes
- process notes
- system descriptions

## Deliverables
- business rules register
- rule sources
- rule ambiguities
- rule conflicts

## Operating procedure
1. Scan source material for decision logic, eligibility criteria, timing rules, approval conditions, thresholds, and exceptions.
2. Rewrite each rule into clear conditional language where possible.
3. Link each rule to its source and confidence level.
4. Separate confirmed rules from inferred rules.
5. Flag conflicts, missing parameters, and unclear authority.

## Quality gates
- Rules are atomic and testable.
- Source and confidence are captured.
- Inferred rules are clearly marked.

## Handoff targets
- as-is-process-investigator
- to-be-process-designer
- requirements packs later

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
