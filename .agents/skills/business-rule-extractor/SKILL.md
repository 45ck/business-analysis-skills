---
name: business-rule-extractor
description: Extract explicit and implicit business rules — decision logic, eligibility criteria, thresholds, approval conditions, calculations, timing rules, constraints, and exceptions — from interviews, documents, policies, process descriptions, and observed system behavior, and turn them into an atomic, testable rules register with sources, confidence, ambiguities, and conflicts. Use this skill whenever the user asks "what are the rules here", needs to document approval or eligibility logic, wants to capture how decisions are made, is replacing or migrating a legacy system whose logic lives in code or in people's heads, has stakeholders explaining things through examples ("usually if the order is big we..."), needs a decision table, or is preparing requirements, configuration, or automation that depends on business logic — even if they never say "business rule". Part of the business-analysis pack; hands off to as-is-process-investigator, to-be-process-designer, and requirements skills.
---

# business-rule-extractor

Pull the rules that govern decisions out of documents, people, and systems, and state each one so precisely that it can be tested, implemented, or challenged, with a clear record of where it came from and how sure we are.

**Language:** reply in the language the user writes in. Quote source text verbatim in its original language.

## When to use

- Rules are scattered across policies, emails, people's heads, spreadsheets, and legacy system behavior.
- Stakeholders explain through examples or habits, and the underlying rule is unclear.
- A process depends on approvals, eligibility, pricing, thresholds, deadlines, or exceptions.
- A system is being replaced, migrated, or automated, and its logic must be preserved or questioned.

Do not use for: mapping the whole process flow (as-is-process-investigator), designing new rules for the future process (to-be-process-designer), or finding vague wording in a spec in general (ambiguity-hunter). If you find process steps or requirements that are not rules, note them and hand off.

## What counts as a business rule

A statement that defines or constrains some aspect of the business and can be evaluated as followed or broken. Classify each rule:

| Type | Meaning | Example |
|---|---|---|
| Decision / eligibility | who or what qualifies | Customer qualifies for credit if account age ≥ 12 months |
| Approval / authority | who must approve what | Orders > 10,000 EUR require sales manager approval |
| Calculation / derivation | how a value is computed | Discount = 5% for orders over 100 units |
| Constraint / validation | what must or must not be true | An invoice cannot be issued without a PO number |
| Timing / sequence | deadlines, durations, order of events | Refunds must be processed within 14 calendar days |
| Exception | override of another rule | VIP customers skip the credit check (overrides BR-3) |
| Definition / term | what a business term means | An "active customer" has ordered in the last 6 months |

Rules are not process steps ("the clerk enters the order") and not system design ("store in table X").

## Inputs

Documents and policies, interview notes, process notes, system descriptions, screenshots, configuration exports, code or report logic, emails, example cases. Record each source. If a rule appears only in one interview or only in system behavior, that limits its confidence; say so.

## Confidence levels

- **Confirmed**: in an authoritative source (approved policy, regulation, signed decision) or corroborated by two or more independent sources.
- **Reported**: stated by one source (person or document of unclear status).
- **Inferred**: deduced by you from examples, data, or system behavior; state what it is based on.
- **Observed in system**: the system enforces it, but no business source confirms it is intended.

Stakeholder habits and opinions ("we normally don't bother for small amounts") are not rules until an owner confirms them.

## Procedure

1. **Scan sources** for decision logic, eligibility criteria, thresholds, approval conditions, calculations, timing rules, validations, definitions, and exceptions. Pay special attention to words like if, when, unless, only, must, never, always, at least, up to, except, usually.
2. **Extract candidate rules** with source location and verbatim quote. Turn examples into a candidate general rule and record the examples as evidence.
3. **Rewrite each rule atomically** in conditional form where possible: *WHEN / IF [condition] THEN [outcome]*, or *[subject] MUST / MUST NOT [constraint]*. One rule per statement; split compound rules. Use defined terms consistently; add undefined terms to the definitions list.
4. **Parameterise**: separate fixed logic from parameters (amounts, percentages, durations, roles). Mark missing parameters as `[TBD]`.
5. **Classify and rate**: type, confidence, source, rule owner or authority (who can change it), and where it is enforced (manual, system, both, nowhere).
6. **Find ambiguities**: vague terms, missing parameters, unclear boundaries (≥ or >, calendar or business days), unclear authority, undefined exceptions.
7. **Find conflicts**: rules that contradict each other, overlapping conditions with different outcomes, document vs. practice vs. system differences, missing precedence between rule and exception. Record both versions; do not choose.
8. **Check coverage**: for decision rules, check combinations of conditions; use a decision table when 2+ conditions interact, and flag combinations with no defined outcome.
9. **Run the quality gates**, then produce the output.

## Writing rules

- Atomic: one condition-outcome pair or one constraint per rule.
- Testable: someone could build a test case showing it followed or broken.
- Declarative: state the rule, not the procedure or the system implementation.
- Never upgrade confidence: an inferred or observed rule stays labelled until confirmed by an owner.
- Do not invent parameters or authorities; use `[TBD]` and ask.
- Keep differing stakeholder versions of the same rule as separate, attributed entries until resolved.
- Number rules (BR-1, BR-2, ...), ambiguities (RA-n), and conflicts (RC-n).

## Quality gates

- Every rule is atomic, testable, and in conditional or constraint form.
- Every rule has a source, a confidence level, and a type.
- Inferred and system-observed rules are clearly marked.
- Missing parameters, undefined terms, and unclear authority are flagged.
- Conflicts are recorded with both versions and their sources.
- Interacting conditions are checked for gaps (decision table where useful).

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Sources reviewed, number of rules by type and confidence, key conflicts and gaps.

## Findings
Patterns: rules living only in people's heads or only in the system, areas with no clear owner, practice diverging from policy.

## Structured outputs
### Business rules register
| ID | Rule (conditional form) | Type | Parameters | Confidence | Source | Owner / authority | Enforced where |
|---|---|---|---|---|---|---|---|
### Rule sources
| Source | Type (policy/interview/system/...) | Status (approved/draft/informal) | Rules derived |
|---|---|---|---|
### Definitions
| Term | Definition | Source | Status |
|---|---|---|---|
### Decision tables
For rules with interacting conditions; undefined combinations marked.
### Rule ambiguities
| ID | Rule | What is unclear | Possible readings | Question |
|---|---|---|---|---|
### Rule conflicts
| ID | Rules / sources in conflict | Version A | Version B | Impact | Who decides |
|---|---|---|---|---|---|

## Risks or tensions
Rules with no owner, policy vs. practice gaps, compliance exposure, stakeholders defending different versions.

## Open questions
Numbered; each with who can answer and which rules it affects.

## Recommended next skill
as-is-process-investigator to place rules in the process flow; to-be-process-designer to decide which rules to keep, change, or retire; requirements skills to turn confirmed rules into requirements and acceptance criteria.
```

## Example

Sources: credit policy v2 (approved), interview with sales lead, ERP configuration.

- **BR-1** (Approval, Confirmed, policy §3): IF order value > 10,000 EUR THEN sales manager approval is required before confirmation.
- **BR-2** (Exception, Reported, sales lead): IF customer is tagged "strategic" THEN BR-1 approval is not required. Owner: [TBD]. Not in policy -> RC-1.
- **BR-3** (Constraint, Observed in system, ERP): an order cannot be confirmed when the customer's credit limit is exceeded. No business source found -> confirm intent.
- **RA-1**: "order value" — with or without VAT? Before or after discount?
- **RC-1**: policy requires approval for all orders > 10,000 EUR; sales lead reports strategic customers are exempt. Impact: audit finding risk. Who decides: finance director.

## Handoffs

- **as-is-process-investigator**: to show where in the process each rule is applied and by whom.
- **to-be-process-designer**: to decide which rules to keep, simplify, automate, or retire.
- **requirements skills** (e.g. acceptance-criteria-writer, ambiguity-hunter): to turn confirmed rules into requirements and test conditions.

## Failure modes to avoid

- Presenting habits, examples, or opinions as confirmed rules.
- Treating system behavior as intended business policy without confirmation.
- Writing compound rules that cannot be tested.
- Mixing rules with process steps or technical design.
- Inventing thresholds, parameters, or authorities.
- Choosing one version of a conflicting rule silently.
- Hiding missing coverage behind polished wording.
- Flattening politically different stakeholders into one generic audience.
