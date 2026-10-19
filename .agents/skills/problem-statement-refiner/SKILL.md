---
name: problem-statement-refiner
description: Turn a vague idea, pain point, issue, or one-paragraph project brief into a crisp, solution-free problem statement (actor + need + obstacle + impact) with goal statement, scope and non-scope, stakeholders, constraints, explicit assumptions, measurable success criteria, and the top open questions that block good requirements. Use this skill whenever a request is broad, solution-first ("we need an app"), or unclear about the actual problem, when a repo, ticket, or project starts from a short brief or verbal idea, when the user asks to "clarify the problem", "sharpen the brief", "write a problem statement", or needs a clean starting point before requirements, design, or estimation — even if they never say "problem statement". Part of the requirements-discovery pack; lighter and more requirements-focused than the business-problem-framing workflow; hands off to requirements-interrogator, functional-vs-nonfunctional-splitter, and assumption-extractor.
---

# problem-statement-refiner

Produce a short, sharp statement of the problem that requirements can be built on: who is blocked, from what, by what, with what impact, and how success will be recognised, without sneaking a solution in.

**Language:** reply in the language the user writes in.

## When to use

- The request is broad, solution-first, or unclear about the actual problem.
- A project, repo, or ticket starts from a one-paragraph brief or verbal idea.
- A sharper statement is needed before requirements, design, or estimation.

Do not use for: full initiative framing with root-cause analysis and comparison of solution options (business-problem-framing workflow), or messy multi-topic notes that first need structuring (proto-requirements-normalizer). Use this skill when one problem needs to be stated precisely and quickly.

## Inputs

Raw brief, business context, user or stakeholder context, known constraints, known goals. If the affected actor or the impact is unknown, write the statement with a `[TBD]` placeholder and make it the first open question; do not invent it.

## Procedure

1. **Extract** the current pain, desired outcome, affected users, and business context. Quote the original brief.
2. **Separate symptoms from the root problem.** Symptoms are what people notice; the problem is what blocks the actor. Mark unconfirmed causes as assumptions.
3. **Detect the hidden solution.** If the brief names a solution, record it as "proposed solution" and ask what need it serves.
4. **Write the problem statement** in one sentence: *[Actor] needs to [goal], but is blocked by [obstacle], causing [impact].* (matches docs/ba/templates/problem-statement-template.md). No solution words.
5. **Write the goal statement**: the outcome that would exist if the problem were solved.
6. **Set scope and non-scope**, list stakeholders (primary, secondary), constraints, and assumptions, each labelled Fact or Assumption.
7. **Define success criteria**: measurable where possible (measure, baseline if known, target or TBD). Separate outcomes from delivery outputs.
8. **List the top open questions** (usually 3-7) that block good requirements, ordered by risk.
9. **Run the quality gates**, then produce the output.

## Writing rules

- The problem statement contains no solution.
- Name the affected actor(s) and the operational or business impact; quantify where evidence exists.
- Facts, assumptions, constraints, and unknowns are separated.
- Unknowns become questions, not plausible guesses.
- Keep it short: the statement is one sentence; the whole output fits on about one page.

## Quality gates

- Problem and proposed solution are distinguished.
- Affected actor(s) and impact are named (or marked TBD with a question).
- Scope and non-scope are both present.
- Success criteria are outcomes, measurable where possible.
- Open questions are listed instead of guessed answers.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
The refined problem statement and the single most important open question.

## Findings
Symptoms vs problem, hidden solution in the brief, missing information.

## Structured outputs
### Problem statement
[Actor] needs to [goal], but is blocked by [obstacle], causing [impact].
### Goal statement
### Context
Business / operational context, current workflow, triggering event.
### Scope
- In scope:
- Out of scope:
### Stakeholders
Primary / secondary.
### Success criteria
| Criterion | Measure | Baseline | Target |
|---|---|---|---|

## Assumptions
## Constraints
## Open questions
Top questions, ordered by risk.

## Recommended next skill
requirements-interrogator to probe requirements; functional-vs-nonfunctional-splitter once requirements are listed; assumption-extractor for a deeper assumption scan; business-problem-framing if options need comparing.
```

## Example

Brief: "We need a chatbot because support is overloaded."

- Proposed solution recorded: chatbot. Need behind it: lower support load.
- Problem statement: *Support agents need to answer customer questions within one working day, but are blocked by a ticket volume that grew 40% this year while staffing stayed flat, causing a 3-day backlog and rising complaints.* (40% and 3 days: Fact, support dashboard.)
- Success criteria: median first response ≤ 1 working day (baseline 3 days); complaint rate [TBD baseline].
- Open questions: which ticket types drive the growth? Are repeat questions a large share (would make self-service plausible)?

## Handoffs

- **requirements-interrogator**: to pressure-test requirements built on this statement.
- **functional-vs-nonfunctional-splitter**: once requirements are listed.
- **assumption-extractor**: for a deeper scan of hidden assumptions.
- **business-problem-framing**: if the problem is contested or options must be compared.

## Failure modes to avoid

- Writing the solution into the problem statement.
- Inventing actors, numbers, or impact.
- Success criteria that measure delivery ("chatbot launched") instead of outcomes.
- Omitting non-scope.
- Hiding unknowns behind polished wording.
