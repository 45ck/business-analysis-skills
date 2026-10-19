---
name: edge-case-elicitor
description: Generate realistic boundary, invalid, missing, duplicated, stale, partial, unauthorised, concurrent, sequencing, and environmental edge cases from normal requirements, user stories, or acceptance criteria, and sort them into cases needing a decision versus cases ready to become acceptance criteria. Use this skill whenever the user asks "what could go wrong", "what are we missing", "what edge cases are there", "what if the user...", wants negative scenarios or unhappy paths, when acceptance criteria look happy-path heavy, when a feature looks simple, or when validation, permissions, workflow states, time, money, quotas, or data imports are involved — even if they never say "edge case". Part of the requirements-discovery pack; hands off to acceptance-criteria-writer, ambiguity-hunter, and verification or test-design skills if installed.
---

# edge-case-elicitor

Find the plausible unusual situations a requirement does not yet cover, before users, testers, or production find them, and say for each whether it needs a business decision or can go straight into acceptance criteria.

**Language:** reply in the language the user writes in.

## When to use

- A feature looks simple and is therefore at risk of being under-specified.
- Validation, permissions, workflow branching, money, quotas, or time and state logic exist.
- Acceptance criteria cover only the happy path.
- A spec is going to development or test and nobody has asked "what if".

Do not use for: writing the final criteria (acceptance-criteria-writer), checking wording clarity (ambiguity-hunter), or auditing missing topics across a whole spec (requirements-gap-auditor). This skill goes deep on one feature or flow at a time.

## Edge-case dimensions to probe

| Dimension | Prompts |
|---|---|
| Data: invalid / missing | empty, null, wrong format, wrong type, special characters, very long |
| Data: boundaries | zero, one, max, max+1, negative, decimals, rounding, currency |
| Duplicates | same submission twice, same record imported again, double click |
| Stale / partial | outdated data, half-saved form, interrupted upload, partial import |
| Actor / permissions | unauthorised, role changed mid-flow, deactivated user, delegated access |
| State / lifecycle | action on cancelled, expired, locked, archived, or already completed item |
| Sequencing / timing | out-of-order steps, back button, timeouts, deadlines, time zones, DST, month end |
| Concurrency | two users edit the same item, race between approval and cancellation |
| Volume / limits | quota reached, bulk operations, large files, peak load |
| Environment / integration | external system down or slow, offline, different device or browser |
| Business exceptions | refunds, partial delivery, overrides, manual corrections, legal holds |

## Procedure

1. **Understand the normal flow**: actor, trigger, steps, data, states, and rules (from the input). If the normal flow itself is unclear, list that first as an ambiguity.
2. **Probe each relevant dimension** and generate cases. Skip dimensions that do not apply; say so briefly.
3. **Filter for plausibility**: keep cases that can realistically happen given the workflow, data rules, or users. Drop random or absurd ones.
4. **Rate** each case: Likelihood (H/M/L) and Impact (H/M/L), and mark **Critical** cases (data loss, money, security, legal, safety).
5. **Classify** each case:
   - **Needs decision**: expected behaviour is not defined by the input; write a specific question for the owner.
   - **Ready for AC**: expected behaviour follows from stated rules; write it as a negative scenario or draft criterion.
6. **Run the quality gates**, then produce the output.

## Writing rules

- Every case maps back to a real workflow step, data rule, or state.
- Describe the situation concretely ("user submits the form twice within 2 seconds"), not abstractly ("concurrency issues").
- Do not decide business behaviour yourself where the input is silent; ask.
- IDs: EC-001, ...; link to requirement or AC IDs where available.

## Quality gates

- Cases are plausible and traceable to the workflow or a data rule.
- Critical failure modes (data loss, money, security, legal) are represented or explicitly ruled out.
- Each case is classified as Needs decision or Ready for AC.
- Questions are specific and decidable.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Feature or flow analysed, number of cases by dimension, number of critical cases, number needing decisions.

## Findings
Dimensions with the most exposure, gaps in the normal-flow definition.

## Structured outputs
### Edge-case catalogue
| ID | Case | Dimension | Linked to | Likelihood | Impact | Critical | Classification |
|---|---|---|---|---|---|---|---|
### Negative scenarios (ready for AC)
- EC-00n: Given ... When ... Then ... (draft)
### Follow-up questions (needs decision)
- Q1 (EC-00n): specific question with options if possible

## Assumptions
## Constraints
## Open questions

## Recommended next skill
acceptance-criteria-writer for ready cases; ambiguity-hunter or requirements-interrogator for unresolved behaviour; verification or test-design skills if installed.
```

## Example

Feature: "Customer can cancel an order before it ships."

- **EC-001** (State, Critical): cancellation requested while the warehouse is picking the order. Needs decision: is "picking" before or after "ships"?
- **EC-002** (Concurrency): customer cancels at the same moment the shipping label is created. Needs decision: which wins?
- **EC-003** (Data/Money): order paid partly with a gift card. Needs decision: refund to card, gift card, or both?
- **EC-004** (Duplicates, ready for AC): Given a cancelled order, When the customer presses cancel again, Then no second refund is created and the order shows "Cancelled".

## Handoffs

- **acceptance-criteria-writer**: to turn ready cases and answered questions into criteria.
- **ambiguity-hunter**: when the normal flow wording is itself unclear.
- Verification or test-design skills (if installed): to design tests for critical cases.

## Failure modes to avoid

- Random or implausible cases that waste review time.
- Abstract categories instead of concrete situations.
- Deciding business behaviour without evidence.
- Missing critical failure modes because the feature "looks simple".
- Hiding unresolved behaviour behind polished draft criteria.
