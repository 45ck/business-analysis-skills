---
name: requirements-interrogator
description: Run a disciplined, risk-based clarification pass over a set of requirements — probing actor, trigger, preconditions, main and exception flows, data, policy, security, timing, and operations — classifying every issue as missing information, conflict, hidden assumption, scope uncertainty, or unverifiable statement, and producing a prioritised question set, an issues list, an assumptions register, and rewritten requirements where enough context exists. Use this skill whenever the user has requirements that are incomplete, optimistic, or inconsistent, is about to design, estimate, or implement from natural-language requirements, needs questions for a stakeholder meeting or follow-up interview, has workshop or stakeholder notes to pressure-test, or a change request may affect security, compliance, UX, or operations — even if they never say "interrogate" or "clarify". Part of the requirements-discovery pack; hands off to ambiguity-hunter, constraint-detector, and acceptance-criteria-writer.
---

# requirements-interrogator

Pressure-test requirements before anyone builds on them: find what is missing, shaky, contradictory, or untestable, and turn it into a short, prioritised list of questions that the right people can answer.

**Language:** reply in the language the user writes in. Write stakeholder questions in the language the stakeholders use, if the user says it differs.

## When to use

- Requirements are incomplete, optimistic, or inconsistent.
- Design, estimation, or implementation is about to start from natural-language requirements.
- A meeting or follow-up interview with stakeholders needs a question list.
- A change request may touch security, compliance, UX, or operations.

Do not use for: a line-by-line wording audit (ambiguity-hunter), a full completeness check against a topic list (requirements-gap-auditor), or a dedicated conflict analysis (requirements-conflict-checker). This skill is the broad clarification pass; it finds issues of all kinds and hands specialised ones on.

## Probe areas

Actor and role · trigger · preconditions · main flow · exception and alternative flows · data (source, format, ownership) · business rules and policy · permissions and security · timing and deadlines · volume and performance · integrations · operations and support · reporting and audit.

## Issue classes

| Class | Meaning |
|---|---|
| Missing information | needed to design or test, not provided |
| Conflict | two statements cannot both hold |
| Hidden assumption | something taken for granted without evidence |
| Scope uncertainty | unclear whether in or out |
| Unverifiable statement | vague quality words (fast, user-friendly, secure, intuitive, scalable) with no criterion |
| Implementation decision | a design choice presented as a requirement (not a requirement gap; flag separately) |

## Procedure

1. **Read the requirement set end to end** before asking anything; note its scope and the problem it serves.
2. **Probe each requirement** against the probe areas that apply.
3. **Log issues**, each with the requirement ID, quote, class, and why it matters.
4. **Prioritise** by risk: High (could cause wrong build, compliance breach, rework, or estimate error), Medium, Low. Put the highest-risk questions first; keep the list short enough for one meeting (group the rest as "later").
5. **Write questions** that are specific and decidable, ideally with options ("Per user or per account?"), and name who should answer (role).
6. **Register assumptions** you or the source rely on, each with how to validate it.
7. **Rewrite shaky requirements** into testable language only where the context gives enough basis; otherwise keep the original and link the question.
8. **Run the quality gates**, then produce the output.

## Writing rules

- Questions are risk-based, not a random checklist dump.
- Distinguish missing requirements from implementation decisions.
- Mark every unverifiable quality word.
- Rewrites never invent facts; unknowns stay `[TBD]` with a question.
- IDs: issues RI-001, questions Q-001, assumptions ASM-001; reference requirement IDs.

## Quality gates

- Every issue is classified and linked to a requirement.
- Questions are prioritised by risk, specific, decidable, and have a suggested addressee.
- Missing requirements and implementation decisions are separated.
- Unverifiable language is marked.
- Rewrites contain no invented facts.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Requirements reviewed, issues by class and risk, the 3 questions that matter most.

## Findings
Patterns (e.g. no exception flows anywhere, NFRs all unquantified).

## Structured outputs
### Clarification question set (prioritised)
| ID | Question | Options | Ask whom | Risk | Linked issue |
|---|---|---|---|---|---|
### Requirements issues list
| ID | Requirement | Quote | Class | Why it matters | Risk |
|---|---|---|---|---|---|
### Updated requirement notes
- REQ-ID: original -> testable rewrite (or "pending Q-00n")
### Implementation decisions flagged

## Assumptions
| ID | Assumption | Validate by |
|---|---|---|

## Constraints
## Open questions
Lower-priority questions for later.

## Recommended next skill
ambiguity-hunter for a wording audit; constraint-detector for hidden limits; acceptance-criteria-writer once answers are in; requirements-conflict-checker or requirements-gap-auditor for deeper passes.
```

## Example

Requirement: "FR-003: Users can export reports quickly in any format."

- **RI-001** (Unverifiable): "quickly" — Q-001: maximum export time for a report of typical size? Ask: product owner. Risk: Medium.
- **RI-002** (Missing information): "any format" — Q-002: which formats are required: CSV, XLSX, PDF? Risk: High (affects estimate).
- **RI-003** (Missing information, permissions): which users may export which reports? Q-003 to data protection officer if reports contain personal data. Risk: High.
- Rewrite pending Q-001..Q-003: "Users with role [TBD] can export report X to [formats TBD] within [TBD] seconds."

## Handoffs

- **ambiguity-hunter**: for a systematic wording audit.
- **constraint-detector**: when hidden limits surface.
- **acceptance-criteria-writer**: once questions are answered and requirements are testable.

## Failure modes to avoid

- Long unprioritised question dumps.
- Treating implementation preferences as missing requirements.
- Rewriting requirements with invented numbers.
- Asking vague questions ("can you clarify performance?").
- Hiding unresolved ambiguity behind polished rewrites.
