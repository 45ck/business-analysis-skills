---
name: business-problem-framing
description: Frame a business problem or opportunity before anyone designs a solution — situation and trigger, symptoms vs. root causes, objectives and success criteria, assumptions and constraints, in/out of scope, several candidate solution directions compared against need, constraints, and feasibility, ending with a recommended framing and open questions. Use this skill whenever a project, initiative, or change request is being started, scoped, or pitched; when the user or team is jumping to a solution ("we need a new CRM", "let's build an app") before the problem is clear; when scope, goals, or success are blurry or disputed; when the user asks "what problem are we solving", "is this the right thing to do", "help me scope this", or needs a problem statement, project brief, discovery summary, or opportunity assessment — even if they never say "framing". Part of the business-analysis pack; hands off to as-is-process-investigator, assumption-extractor, benefit-hypothesis-writer, and project-charter-writer if present.
---

# business-problem-framing

Get agreement on what problem is being solved, for whom, why now, what success looks like, and which directions are worth pursuing, before effort goes into any single solution.

**Language:** reply in the language the user writes in. Keep names of systems, teams, and documents as used in the sources.

## When to use

- A project or initiative is being initiated, scoped, or pitched.
- The team is jumping to a solution before the problem is understood.
- Scope, objectives, success criteria, assumptions, or options are blurry or disputed.
- A request arrives framed as a solution ("buy tool X") and the underlying need is unclear.

Do not use for: mapping the current process in detail (as-is-process-investigator), deep extraction of hidden assumptions (assumption-extractor), writing measurable benefit hypotheses (benefit-hypothesis-writer), or the formal project charter (project-charter-writer, if present). This skill produces the framing those steps build on.

## Inputs

- project or problem context, including the original request in its own words
- goals and constraints (budget, time, regulation, technology, policy)
- known stakeholders, systems, and documents
- level of formality required: **light** (one-page framing for a quick decision), **standard** (default), or **formal** (for steering committee, funding, or audit)

If formality is not stated, use standard and say so. If the trigger, the affected group, or the decision owner is unknown, record it as an open question rather than inventing it.

## Evidence labels

Tag every substantive statement:
- **Fact**: backed by data, a document, or a direct observation (cite it).
- **Inference**: your conclusion from facts (say from which).
- **Assumption**: believed true, not verified.
- **Opinion**: a stakeholder's view, attributed to them.

Where sources or stakeholders conflict, record both positions; do not smooth the conflict away.

## Procedure

1. **State the situation and trigger.** What is happening, since when, and why it matters now (event, deadline, incident, opportunity, regulation). Quote the original request.
2. **Separate symptoms from root causes.** List what people observe (symptoms), then candidate causes. Use a simple why-chain or cause categories (people, process, technology, data, policy, external). Mark each cause as Fact, Inference, or Assumption; unconfirmed causes are hypotheses to check, not conclusions.
3. **Write the problem statement:** *[Affected group] experiences [problem] when [situation], which causes [impact, quantified if possible]. This matters now because [trigger].* No solution words in it. If the request was a solution, also record the need behind it.
4. **Define objectives, outcomes, and success criteria.** Objectives say what should change; success criteria say how we will know (measure, baseline if known, target or `[TBD]`, time frame). Keep business outcomes separate from delivery outputs.
5. **Log assumptions, constraints, and non-negotiables.** Assumption = unverified belief; constraint = confirmed limit with a source; non-negotiable = constraint a named authority will not trade off. Number them (ASM-n, CON-n).
6. **Set scope boundaries.** In scope, out of scope, and **undecided** (items that need a decision), each with a reason. Include affected processes, systems, organisational units, geographies, and user groups where relevant.
7. **Generate multiple solution directions** (usually 3-4), at the level of approach, not design. Always include **do nothing / minimal change** as a baseline, and at least one non-technology option (process, policy, organisational) if plausible.
8. **Compare options** against: fit to the problem and root causes, objectives and success criteria, constraints and non-negotiables, feasibility (effort, capability, time), risk, and reversibility. Make the trade-offs explicit; do not rank by preference.
9. **Recommend a framing**: the problem statement to adopt, the scope to proceed with, the direction(s) worth exploring next, and why. State confidence and what would change the recommendation.
10. **List open questions and next decisions**, each with who should decide or answer.

## Formality levels

- **Light**: problem statement, 2-3 objectives with success criteria, scope in/out, 2-3 options in one table, top open questions. Fits on one page.
- **Standard**: all steps, compact tables.
- **Formal**: all steps plus sources per statement, decision log of conflicts, explicit sign-off points.

## Writing rules

- Separate fact, inference, assumption, and opinion everywhere.
- Prefer evidence-backed conclusions over polished speculation; an honest "unknown" beats a plausible guess.
- The problem statement must not contain a solution.
- Do not invent stakeholders, numbers, or decision owners; use placeholders and log them.
- Record conflicts between stakeholders as conflicts, attributing each position.
- Produce artifacts in editable, reusable form (tables, numbered items), not one long narrative.

## Quality gates

- Symptoms and root causes are separated, and unconfirmed causes are labelled.
- The problem statement is solution-free and names the affected group, impact, and trigger.
- Every objective has at least one success criterion with measure and target status.
- Scope has in, out, and undecided items with reasons.
- At least three options, including do nothing / minimal change, with explicit trade-offs.
- Unknowns are logged with owners; next decisions are obvious.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
The problem in one sentence, recommended direction, confidence, top 3 open decisions.

## Findings
### Situation and trigger
### Symptoms vs. root causes
| Symptom | Candidate cause | Category | Label (Fact/Inference/Assumption) | How to confirm |
|---|---|---|---|---|

## Structured outputs
### Problem statement
### Objectives and success criteria
| Objective | Success criterion / measure | Baseline | Target | By when |
|---|---|---|---|---|
### Scope statement
| Item | In / Out / Undecided | Reason |
|---|---|---|
### Assumptions and constraints log
| ID | Statement | Type (assumption/constraint/non-negotiable) | Source / authority | Impact if wrong or violated |
|---|---|---|---|---|
### Options summary
| Option | Description | Addresses causes | Fits constraints | Feasibility | Risk | Reversibility | Key trade-off |
|---|---|---|---|---|---|---|---|
### Recommended framing
Problem statement, scope, direction(s) to explore next, rationale, what would change it.

## Risks or tensions
Conflicting stakeholder positions (attributed), political sensitivities, weak evidence areas.

## Open questions
Numbered; each with who should answer or decide and what it affects.

## Recommended next skill
as-is-process-investigator to validate root causes in the current process; assumption-extractor for a deeper assumption scan; benefit-hypothesis-writer to turn objectives into measurable benefits; project-charter-writer (if present) once the framing is agreed.
```

## Example

Request: "We need a new ticketing system; support is too slow."

- Symptoms: average first response 2 days (Fact, support dashboard); customers complain on social media (Fact).
- Candidate causes: tickets arrive through 4 channels and are merged by hand (Inference from interview); no triage rules (Reported by team lead -> Assumption until checked); staffing unchanged while volume grew 40% (Fact, HR + ticket data).
- Problem statement: *Customers who contact support wait about 2 days for a first response, which drives complaints and churn risk; this matters now because volume grew 40% this year and the contract renewal season starts in Q1.*
- Options: (0) do nothing; (1) introduce triage rules and a single intake channel in the current tool; (2) add temporary staff for peak season; (3) replace the ticketing system. Trade-off: option 3 is the most expensive and slowest, and it addresses only the channel merge cause, not staffing or triage.
- Recommended framing: problem is response time, not the tool; explore options 1+2 first, keep 3 under review pending as-is investigation.

## Handoffs

- **as-is-process-investigator**: to confirm root causes in the actual process.
- **assumption-extractor**: for a deeper scan of hidden assumptions in the framing.
- **benefit-hypothesis-writer**: to turn objectives into measurable benefit hypotheses.
- **project-charter-writer** (if present): once the framing is agreed and the project proceeds.

## Failure modes to avoid

- Accepting the requested solution as the problem.
- Treating symptoms or stakeholder opinions as root causes.
- Writing success criteria that measure delivery ("system launched") instead of outcomes.
- Offering a single option, or options that are variants of the same solution.
- Smoothing over stakeholder conflict to make the framing look agreed.
- Polished speculation instead of logged unknowns.
- Ending without clear next decisions and owners.
