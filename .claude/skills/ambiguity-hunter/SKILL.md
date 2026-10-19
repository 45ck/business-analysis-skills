---
name: ambiguity-hunter
description: Find ambiguous wording in requirements, user stories, spec sections, or policy text that makes them unverifiable, inconsistent, or open to multiple interpretations, and produce an ambiguity report with rewrite suggestions and specific clarifying questions. Use this skill whenever the user asks to review, audit, proofread, or "tighten" a spec or requirements document, asks whether a requirement is clear or testable, mentions vague, flexible, or open-to-interpretation wording, is preparing a document for sign-off, handoff to development, or contract/policy approval, or says different teams read the same requirement differently — even if they never use the word "ambiguity". Part of the requirements-discovery pack; hands off to requirements-interrogator, acceptance-criteria-writer, and requirements-conflict-checker.
---

# ambiguity-hunter

Find the wording that lets two competent readers understand the same requirement differently, explain exactly why it is risky, and offer a fix or a question that resolves it.

**Language:** reply in the language the user writes in. Quote the original text of each flagged segment verbatim in its source language.

## When to use

- A spec uses flexible or subjective language.
- Several teams (dev, QA, business, legal) will interpret the same text.
- A document is heading toward sign-off, estimation, or implementation.
- The user doubts that a requirement is testable.

Do not use for: finding contradictions between different requirements (hand off to requirements-conflict-checker), writing the acceptance criteria (acceptance-criteria-writer), or discovering missing requirements through interviews (requirements-interrogator). If you notice such issues while hunting, note them and hand off instead of solving them here.

## Inputs

Requirements, stories, spec sections, policy text, or an uploaded document. For long documents, work section by section and say which sections you covered. If context that determines meaning is missing (glossary, actor definitions, referenced documents), do not guess: list it as an open question.

## Ambiguity categories to scan for

| Category | What to look for | Example |
|---|---|---|
| Subjective adjectives/adverbs | fast, user-friendly, secure, appropriate, easily, reasonable | "The page must load quickly" |
| Missing units or thresholds | numbers without unit, period, or limit | "Retry several times" |
| Missing actor | passive voice hiding who acts | "The report is sent" (by whom, to whom) |
| Unclear referent | it, this, they, the system, the above | "It must notify them" |
| Overloaded or undefined nouns | one term, several meanings (user, account, order, customer) | "Active user" |
| Hidden conditions | unstated when/if/unless, defaults, exceptions | "Refund is allowed" (when?) |
| Vague quantifiers | some, most, all (of what set), regularly, occasionally | "Most orders ship same day" |
| Scope ambiguity | and/or, "except", lists with unclear boundaries, "etc." | "Admins and managers or owners" |
| Modal confusion | should, may, can, might vs. must/shall | "The system should log errors" |
| Time and sequence | before/after, "immediately", "on completion", time zones | "Delete after the period ends" |
| Negation and precedence | double negatives, unclear rule priority when rules overlap | "Not unless approved" |
| Non-verifiable claims | "100%", "never", "always" with no verification method | "Never loses data" |

## Procedure

1. **Scan** the text against the categories above. Work in the order of the document so findings can be located.
2. **Flag** each ambiguous segment with: location, verbatim quote, category, the competing interpretations (at least two, concretely stated), and the risk if the wrong one is chosen.
3. **Rate** each flag: High (could cause rework, defects, or disputes), Medium, Low (cosmetic).
4. **Resolve** each flag with one of:
   - a **rewrite suggestion** when the intended meaning is clear from context, or
   - a **clarifying question** when it is not. Do not write a "precise" rewrite that embeds a guess.
5. **Consolidate**: group repeated terms into one glossary candidate rather than flagging the same word 20 times.
6. **Run the quality gates**, then produce the report.

## Writing rules

- Explain the actual ambiguity: "could mean A (calendar days) or B (business days)", not just "unclear".
- Rewrites must improve testability: add actor, trigger, unit, threshold, or named rule. If the number is unknown, put `[TBD: ...]` and ask, do not invent it.
- Questions must be answerable decisively, ideally with a closed set of options: "Is the limit per user or per account?"
- Do not flag harmless flexibility that is intentional and bounded; if it appears intentional, say so and move on.
- Short statements over prose. Number findings (AMB-1, AMB-2, ...) so they can be referenced.

## Quality gates

- Every flag names at least two concrete interpretations.
- Every flag has either a rewrite or a question, never neither.
- Rewrites introduce no invented facts or stakeholder intent.
- Questions are specific and decidable.
- Facts, assumptions, constraints, and open questions are separated.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Scope reviewed, number of flags by severity, the 2-3 most dangerous ones.

## Findings
Patterns: recurring problem terms, systemic issues (e.g. "should" used throughout).

## Structured outputs
### Ambiguity report
| ID | Location | Quote | Category | Interpretations | Risk | Severity |
|---|---|---|---|---|---|---|
### Rewrite suggestions
- **AMB-1**: original -> proposed rewrite
### Question list
- **Q1** (AMB-2): specific question, with answer options if possible
### Glossary candidates
- term: competing meanings -> definition needed

## Assumptions
Interpretations taken as likely but not confirmed.

## Constraints
Stated limits, standards, or business rules that bound the rewrites.

## Open questions
Questions that block rewrites or sign-off.

## Recommended next skill
requirements-interrogator for unanswered questions, acceptance-criteria-writer once wording is stable, requirements-conflict-checker if flags suggest contradictions.
```

## Example

Input: "The system should quickly notify the user when their order is delayed."

- **AMB-1** (Subjective adverb, High): "quickly". Could mean within 1 minute, within 15 minutes, or in the same business day. Risk: no pass/fail check. Question: what is the maximum delay between detecting the delay and sending the notification?
- **AMB-2** (Modal, Medium): "should". Mandatory or optional? Question: is notification required for release?
- **AMB-3** (Overloaded noun, Medium): "the user". Buyer, account owner, or recipient of a gift order?
- **AMB-4** (Missing definition, High): "delayed". Relative to what promised date, and by how much?
- Rewrite once answered: "The system must send the buyer an email within [TBD: 15] minutes after an order is marked late, where late means [TBD: shipping not started X hours after the promised date]."

## Handoffs

- **requirements-interrogator**: when the question list needs a structured session with stakeholders.
- **acceptance-criteria-writer**: when ambiguities are resolved and the wording is ready to become criteria.
- **requirements-conflict-checker**: when two statements appear to contradict each other.

## Failure modes to avoid

- Flagging wording as bad without saying what the competing readings are.
- Inventing stakeholder intent in rewrites.
- Turning preferences or style into mandatory requirements.
- Polishing the language so the ambiguity looks resolved when it is not.
- Mixing functional, non-functional, and business-rule concerns in one blob.
- Flagging every occurrence of the same term instead of consolidating.
