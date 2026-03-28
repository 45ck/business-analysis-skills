---
name: "as-is-process-investigator"
pack: "business-analysis-pack"
purpose: "Document and analyze the current-state process, including actors, steps, decisions, delays, pain points, exceptions, and unofficial workarounds."
inputs: ["interview notes", "observation notes", "documents", "current system/process context"]
outputs: ["as-is process summary", "pain points", "handoff map", "gaps and risks", "candidate modeling notes"]
handoffs: ["to-be-process-designer", "business-rule-extractor", "benefit-hypothesis-writer"]
---
# as-is-process-investigator

## Purpose
Document and analyze the current-state process, including actors, steps, decisions, delays, pain points, exceptions, and unofficial workarounds.

## Trigger this skill when
- You need to understand the current process before recommending change.
- The real workflow is unclear or disputed.
- There are complaints but no agreed process map.

## Expected inputs
- interview notes
- observation notes
- documents
- current system/process context

## Deliverables
- as-is process summary
- pain points
- handoff map
- gaps and risks
- candidate modeling notes

## Operating procedure
1. Reconstruct the current workflow from multiple evidence sources.
2. List actors, triggers, decisions, artifacts, handoffs, timings, and exception paths.
3. Identify bottlenecks, rework loops, and dependency pain points.
4. Separate official process from how work actually gets done.
5. Summarize the current-state findings and what should be preserved, fixed, or questioned.

## Quality gates
- Official and unofficial workflows are separated.
- Pain points are grounded in observed or reported evidence.
- The output is specific enough to inform to-be design.

## Handoff targets
- to-be-process-designer
- business-rule-extractor
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
