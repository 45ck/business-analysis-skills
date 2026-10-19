---
name: catwoe-root-definition
description: Define a purposeful activity system with Soft Systems Methodology (SSM) — apply CATWOE (Customers, Actors, Transformation, Worldview/Weltanschauung, Owner, Environmental constraints), write a root definition in PQR form, set measures of performance (efficacy, efficiency, effectiveness), and compare root definitions from different worldviews. Use this skill whenever the user mentions CATWOE, SSM, Checkland, root definition, rich picture, or worldview analysis, and also when a problem is messy, political, or systemic, stakeholders disagree about what the system is even for, the "real" purpose of a service, department, or process is contested, or a project needs a shared definition of purpose before process redesign — even if they never name the technique. Part of the business-analysis pack; hands off to business-problem-framing, as-is-process-investigator, to-be-process-designer, and stakeholder-communication-planner.
---

# catwoe-root-definition

Use SSM's CATWOE and root definition to make explicit what a purposeful system is meant to transform, for whom, by whom, under which worldview and constraints, so that people with different views can see where they actually disagree and the team can decide which view to design around.

**Language:** reply in the language the user writes in. Keep the CATWOE letters and the term "root definition" (add the user's language equivalent once if helpful).

## When to use

- The problem is messy, political, or systemic, and there is no agreed definition of the problem.
- Stakeholders disagree about what a system, service, or process is for.
- SSM-style framing is requested or would help before process modeling or redesign.
- Worldview and the core transformation need explicit treatment, not just requirements.

Do not use for: well-defined problems with agreed goals (business-problem-framing is enough), detailed process mapping (as-is-process-investigator), or designing the future process (to-be-process-designer). CATWOE informs a decision; it is not the answer itself.

## Core concepts (apply correctly)

| Element | Meaning | Common mistake |
|---|---|---|
| **C** Customers | beneficiaries or victims of the transformation (who it is done to or for) | listing only paying customers; forgetting victims |
| **A** Actors | who carries out the transformation activities | confusing actors with owner |
| **T** Transformation | input -> output: the input itself changed into a changed state | "input: staff, output: report"; input and output must be the same entity, transformed |
| **W** Worldview (Weltanschauung) | the belief that makes this transformation meaningful | leaving it implicit or stating a goal instead of a belief |
| **O** Owner | who can stop or change the system | naming the manager who only runs it day to day |
| **E** Environmental constraints | conditions outside the system's control that it must take as given | listing internal problems as constraints |

**Root definition (PQR form):** *A system to do **P** (what), by **Q** (how), in order to contribute to **R** (why, the longer-term aim).* Every CATWOE element must be recoverable from the root definition.

**Measures of performance (3Es):** Efficacy (does T happen?), Efficiency (resources used), Effectiveness (does it achieve R / the higher aim?). Add Ethicality and Elegance only when relevant or requested.

**Relevant systems:** different worldviews give different root definitions of the same situation (e.g. a hospital as "a system to cure patients" vs. "a system to train doctors" vs. "a system to manage public health budgets"). Comparing them is the point; do not collapse them into one compromise statement.

## Inputs

- problem context
- available evidence and constraints
- known stakeholders or actors
- desired output format and the decision the analysis should support

If the decision or deliverable is unclear, propose what CATWOE could inform (scope agreement, choice of redesign direction, stakeholder alignment) and ask. If stakeholder views are not documented, mark worldviews as **Inferred** and recommend validating them.

## Procedure

1. **Clarify the decision or deliverable** the analysis should inform, in one sentence.
2. **State assumptions before analysis**: what you take as given about the situation, the system boundary, and stakeholder views, each labelled Fact, Inference, or Assumption.
3. **Identify candidate worldviews.** List the distinct stakeholder perspectives on what the system is for (usually 2-4). Attribute each to the stakeholder group that holds it.
4. **Apply CATWOE per worldview**, starting with **T and W** (they define the system), then C, A, O, E. Check T against the input = output-entity rule.
5. **Write a root definition** for each worldview in PQR form, and check that all six CATWOE elements can be traced back to it.
6. **Define measures of performance** (3Es) for each root definition, with an observable indicator and data source where possible.
7. **Compare root definitions**: where they agree, where they conflict (different T, different C, different O), and what each implies for scope, priorities, and design. Rank trade-offs explicitly, stating the ranking criterion.
8. **Set scope and boundary notes**: what is inside the system, what is environment, what is out of scope, and boundary questions still open.
9. **State implications for next actions**: which root definition (or combination) to proceed with and why, what to validate, which skill comes next. If the choice is a stakeholder decision, say who should make it.

## Writing rules

- Apply the technique explicitly: show the CATWOE table and the root definition, not just a summary.
- Transformation is always input -> output of the same entity.
- Worldviews are beliefs ("Customers deserve fast resolution because..."), not goals.
- Keep different worldviews as separate root definitions; never merge them into a vague compromise.
- Separate facts, inferences, assumptions, and unknowns throughout.
- Keep terminology consistent with the project glossary if one exists; flag terms used differently by stakeholders.
- Do not present the technique as the answer; end with a decision or next action.
- Number root definitions (RD-1, RD-2, ...).

## Quality gates

- CATWOE is applied correctly: T follows the input -> output rule, O can actually stop the system, E is external.
- Each root definition is in PQR form and contains all CATWOE elements.
- At least two worldviews are considered when stakeholders differ; each is attributed.
- Measures of performance exist for each root definition.
- Assumptions and missing evidence are visible.
- Trade-offs are ranked with a stated criterion, and the next step is clear.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Decision informed, number of worldviews analysed, recommended root definition, key disagreement.

## Assumptions
Stated before analysis; labelled Fact / Inference / Assumption.

## Findings
### Worldviews
| W | Held by | Belief | Evidence (Fact/Inferred) |
|---|---|---|---|

## Structured outputs
### CATWOE table
| Element | RD-1 (worldview A) | RD-2 (worldview B) | RD-3 ... |
|---|---|---|---|
| C | | | |
| A | | | |
| T (input -> output) | | | |
| W | | | |
| O | | | |
| E | | | |
### Root definitions
- **RD-1**: A system to do P, by Q, in order to R.
### Measures of performance
| RD | Efficacy | Efficiency | Effectiveness | Indicator / data source |
|---|---|---|---|---|
### Comparison and trade-offs
Agreements, conflicts, ranked trade-offs with the criterion used.
### Scope and boundary notes
Inside the system / environment / out of scope / open boundary questions.

## Risks or tensions
Stakeholders whose worldview is not chosen, power differences between owners, weak evidence.

## Open questions
Numbered; who can answer, what it changes.

## Implications and next step
Root definition to proceed with (or decision needed and who decides), what to validate, recommended next skill.
```

## Example

Situation: a city library's budget is under review; managers, staff, and council disagree on priorities.

- **RD-1** (W: libraries exist to give everyone free access to knowledge; held by staff): A system owned by the city council, operated by library staff, to turn residents without access to information into residents with access, by lending materials and offering free internet and guidance, in order to support equal opportunity.
  - T: residents without access -> residents with access. C: residents, especially low-income. E: fixed budget, opening-hours rules.
- **RD-2** (W: public services must show measurable value per euro; held by council finance): A system to turn unused public space and budget into high-usage community services, by consolidating branches and tracking visits, in order to maximise value for taxpayers.
- Conflict: different T and C; RD-2's victims include residents near closed branches. Ranked trade-off (criterion: council's statutory duty first): access obligations constrain consolidation options.
- Next step: council decision on which worldview leads; then as-is-process-investigator on branch usage.

## Handoffs

- **business-problem-framing**: once a root definition is chosen, to frame scope, objectives, and options.
- **as-is-process-investigator**: to examine how the current system performs against the chosen root definition.
- **to-be-process-designer**: to build a conceptual or future process model from the root definition.
- **stakeholder-communication-planner**: to handle stakeholders whose worldview was not chosen.

## Failure modes to avoid

- Presenting the CATWOE table as the answer instead of using it to inform a decision.
- Transformation that changes one thing into another entity (staff -> report).
- Worldview left implicit or written as a goal.
- Owner confused with the day-to-day manager.
- Merging different worldviews into one bland root definition.
- Hiding missing evidence or weak assumptions about stakeholder views.
- Unranked trade-offs and no clear next step.
