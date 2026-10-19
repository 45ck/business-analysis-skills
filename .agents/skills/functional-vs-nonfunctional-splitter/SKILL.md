---
name: functional-vs-nonfunctional-splitter
description: Split mixed requirement text into atomic statements and classify each as functional requirement, non-functional (quality attribute) requirement, business rule, external constraint, assumption, or design choice, grouping non-functional items by category (performance, security, usability, reliability, availability, maintainability, compliance, supportability, scalability). Use this skill whenever requirements are mixed together in prose, a brief uses vague quality words like reliable, scalable, simple, secure, fast, or user-friendly, the user asks to "clean up", "structure", "sort", or "categorise" requirements, needs FR and NFR lists for design, estimation, vendor selection, or test planning, or suspects design decisions are disguised as requirements — even if they never say "functional" or "non-functional". Part of the requirements-discovery pack; hands off to acceptance-criteria-writer, requirements-prioritizer, and requirements-traceability-starter.
---

# functional-vs-nonfunctional-splitter

Turn a blend of needs, qualities, rules, limits, and solution ideas into clean, separate, atomic statements, so each kind can be designed, estimated, and tested in the right way.

**Language:** reply in the language the user writes in. Quote source text verbatim in its original language.

## When to use

- Requirements are mixed together in prose, emails, or meeting notes.
- A brief relies on vague quality words (fast, secure, scalable, simple).
- Clean FR and NFR lists are needed for design, estimation, procurement, or test planning.
- Design choices may be posing as requirements ("use microservices", "build in React").

Do not use for: turning raw chat or notes into a first structure (proto-requirements-normalizer does that first), writing acceptance criteria (acceptance-criteria-writer), or deep extraction of business rules (business-rule-extractor). This skill classifies and splits; it flags vague NFRs but defers precise quantification to the owner.

## Classification

| Class | Test question | Example |
|---|---|---|
| Functional (FR) | does it describe something the system does for an actor? | The system sends an order confirmation email |
| Non-functional (NFR) | does it describe how well the system does it? | Search results return within 2 s for 95% of queries |
| Business rule (BR) | is it a business policy true regardless of the system? | Orders over 10,000 EUR need manager approval |
| External constraint (CON) | is it a limit imposed from outside? | Must run on the company Azure tenant |
| Assumption (ASM) | is it believed but not verified? | Users have a company email address |
| Design choice (DES) | does it prescribe a solution without a stated need? | Use a microservice per module |

NFR categories: performance, scalability, availability, reliability, security, privacy, usability, accessibility, maintainability, portability, compliance, supportability/operability, auditability.

## Procedure

1. **Extract** each statement independently, with source quote and location.
2. **Split blended statements** into atomic ones ("Users can log in securely and quickly" -> FR log in; NFR security; NFR performance).
3. **Classify** each atomic statement using the table. If two classes fit, choose the primary one and note the secondary.
4. **Group NFRs** by category and check measurability: if an NFR has no measurable criterion, keep it, mark it **Unquantified**, and write a question asking for the threshold. Do not invent numbers.
5. **Handle design choices**: keep them in a separate list with the question "what need does this serve?" and whether a stated constraint justifies it (then it may be a CON).
6. **List misclassified statements** from the source (e.g. a "requirement" that is really a business rule) so authors see the correction.
7. **Run the quality gates**, then produce the output.

## Writing rules

- One statement per line; one behaviour or one quality per statement.
- FR form: "The system shall/must [action] [object] [for actor/condition]".
- NFR form: "[Quality] — [measurable criterion or TBD] — [scope/context]".
- Preserve meaning; never add obligations not in the source.
- IDs: FR-001, NFR-001, BR-001, CON-001, ASM-001, DES-001 (matches docs/ba/templates/requirements-register-template.md).

## Quality gates

- Every statement is atomic.
- Quality attributes are not mislabelled as features, and features not as qualities.
- Design choices are not silently treated as requirements.
- Unquantified NFRs are flagged with a question, not given invented numbers.
- Every item keeps its source reference.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Statements extracted, counts per class, number of unquantified NFRs, number of design choices found.

## Findings
Blended statements split, recurring vague words, misclassifications in the source.

## Structured outputs
### Functional requirements
| ID | Statement | Source |
|---|---|---|
### Non-functional requirements
| ID | Category | Statement | Measurable? | Source |
|---|---|---|---|---|
### Business rules / constraints / assumptions
| ID | Class | Statement | Source |
|---|---|---|---|
### Design choices to question
| ID | Statement | Need it may serve | Question |
|---|---|---|---|
### Misclassified statements list
| Source text | Labelled as | Actually is | Why |
|---|---|---|---|

## Assumptions
## Constraints
## Open questions
Thresholds for unquantified NFRs, owners of design choices.

## Recommended next skill
acceptance-criteria-writer for FRs; requirements-prioritizer to rank; requirements-traceability-starter to assign stable links; business-rule-extractor if many business rules surfaced.
```

## Example

Input: "The portal must be fast and secure, built in React, and let managers approve leave requests. Leave over 10 days needs HR sign-off."

- **FR-001**: The system shall let a manager approve or reject a leave request from their team.
- **NFR-001** (Performance, Unquantified): pages respond "fast" — Q: maximum response time and percentile?
- **NFR-002** (Security, Unquantified): "secure" — Q: authentication method, data classification, standards to meet?
- **BR-001**: leave requests over 10 days require HR approval in addition to the manager.
- **DES-001**: "built in React" — Q: is this a company standard (then CON) or a preference?

## Handoffs

- **acceptance-criteria-writer**: to write AC for functional requirements.
- **requirements-prioritizer**: to rank the clean lists.
- **requirements-traceability-starter**: to link IDs to goals and tests.
- **business-rule-extractor**: when business rules need full formalisation.

## Failure modes to avoid

- Leaving compound statements unsplit.
- Inventing NFR thresholds.
- Treating design choices as requirements without questioning them.
- Changing the meaning of source statements while rewriting.
- Collapsing functional, non-functional, and business-rule concerns into one blob.
