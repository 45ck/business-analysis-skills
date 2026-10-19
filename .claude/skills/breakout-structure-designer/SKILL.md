---
name: breakout-structure-designer
description: Design breakout exercises for workshops so that parallel groups produce structured, comparable output instead of parallel confusion — including group composition, the task and its artifact template, timeboxes, instructions for groups and facilitators, checkpoints, recovery plans, and how results will be synthesized in plenary. Use this skill whenever the user plans a workshop, discovery session, process mapping session, requirements workshop, retrospective, design sprint, or stakeholder session that splits people into groups or tables, asks how to divide participants, how to run breakout rooms (in person or online), how to get comparable results from several groups, or how to merge group outputs afterwards — even if they never say "breakout". Part of the business-analysis pack; works with workshop-agenda-builder and feeds as-is-process-investigator and to-be-process-designer.
---

# breakout-structure-designer

Design breakouts so that every group knows exactly what to produce, in what form, by when, and so that the results can be compared and merged in plenary without re-doing the work.

**Language:** reply in the language the user writes in. Write participant-facing instructions in the language the participants will use, if the user says it differs.

## When to use

- A workshop needs breakout sessions but the exercise design is unclear.
- Parallel stakeholder input is needed without chaos or duplicated effort.
- Several groups must produce comparable outputs that will be merged.
- A previous breakout produced vague or incompatible results and needs redesign.

Do not use for: building the whole workshop agenda (workshop-agenda-builder), analysing the current process from the collected material (as-is-process-investigator), or designing the future process (to-be-process-designer). This skill designs the exercise; those skills use what it produces.

## Inputs

- workshop agenda or slot where the breakout fits
- participants: number, roles, departments, seniority, known tensions, remote or in person
- objective of the breakout: what decision or artifact it serves
- artifact target: what should exist at the end (process map, list of pain points, prioritised options, requirements, risks)
- constraints: total time, rooms or online tool, facilitator count, language

If the objective or the artifact target is missing, do not design around a guess: propose 2-3 likely options and ask which one. If participant information is missing, design with placeholders (Group A: [role mix]) and say what you need to finalise assignments.

## Grouping strategies (choose and justify)

| Strategy | Use when | Watch out for |
|---|---|---|
| Mixed roles (cross-functional) | you need end-to-end view, shared understanding, handoff problems | senior or loud voices dominating |
| Same role (homogeneous) | you need each perspective stated without pressure, or want to surface differences between groups | groups confirming their own bias |
| Split by topic / process segment | the scope is large and can be divided | gaps and overlaps at segment boundaries |
| Same task, parallel groups | you want comparable alternatives or to test consensus | needs strict template to compare |
| Deliberate tension (opposing views together) | you need trade-offs worked out | needs a strong facilitator and ground rules |

Keep groups at 3-7 people. Separate people with direct reporting lines when candour matters. Never put all representatives of a politically sensitive stakeholder group in one place without a reason.

## Procedure

1. **Clarify the purpose** of the breakout in one sentence: what output, for what decision or next step.
2. **Choose the grouping strategy** from the table, justify it against the objective, and draft group assignments by role (names only if the user provided them).
3. **Define the task** per group: question to answer, scope boundaries (in / out), expected artifact, and the **template** every group must fill. Same task -> identical template, so outputs are comparable.
4. **Set the timebox** in segments: brief (instructions), work, wrap-up (prepare report-back). Rule of thumb: work time at least 2/3 of the breakout; reserve 3-5 minutes per group for report-back in plenary.
5. **Assign group roles**: facilitator or lead, scribe, timekeeper, presenter. State who plays them if facilitators are limited.
6. **Write participant instructions**: short, numbered, readable in under a minute, with an example of a filled template row.
7. **Plan facilitator checkpoints**: what to check at each point (e.g. at 1/3 time: is the template being used, is the scope right; at 2/3: are they converging) and recovery moves for typical problems (stuck group, off-topic, dominant participant, too broad, finished early, tool failure online).
8. **Plan synthesis**: how outputs are merged in plenary (gallery walk, round-robin report, affinity clustering, dot voting, comparison matrix), who synthesizes, how conflicts between groups are recorded rather than smoothed over, and in what form results go to the next step.
9. **Run the quality gates**, then produce the output.

## Writing rules

- Every breakout has a concrete output format; "discuss X" is not a task.
- Instructions are simple enough to follow without a facilitator present.
- Keep results by group traceable through synthesis; never merge differing stakeholder views into one generic voice.
- Opinions collected in breakouts are inputs, not validated facts; mark them as such for downstream skills.
- Do not invent participant names, roles, or tensions; use placeholders and ask.
- Structured over prose; number breakouts (BO-1, BO-2) if there are several.

## Quality gates

- Each breakout has a stated purpose, a template, and a timebox with segments.
- The grouping strategy is justified against the objective.
- Parallel groups use identical templates so outputs are comparable.
- Facilitator checkpoints and at least three recovery moves are defined.
- A synthesis method is defined, including how disagreement between groups is captured.
- Missing inputs are listed as open questions, not guessed.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Purpose of the breakout(s), number of groups, grouping strategy, total time, artifact produced.

## Findings
Observations about the inputs: risks in participant mix, objective too broad, time too short.

## Structured outputs
### Breakout design
| BO | Purpose | Grouping | Groups × size | Task | Artifact | Timebox (brief / work / wrap-up) |
|---|---|---|---|---|---|---|
### Group assignments
| Group | Role mix | Topic / scope | Facilitator | Notes (why this mix) |
|---|---|---|---|---|
### Output template
The exact table or canvas each group fills, with one example row.
### Participant instructions
1. ...
### Facilitation instructions
- Checkpoints: time -> what to check
- Recovery moves: problem -> action
### Synthesis plan
Method, who synthesizes, how conflicts are captured, format handed to the next step.

## Risks or tensions
Political dynamics, dominant voices, groups likely to diverge, remote participation issues.

## Open questions
Numbered; say what each one would change in the design.

## Recommended next skill
workshop-agenda-builder to fit the breakout into the agenda; as-is-process-investigator or to-be-process-designer to process the collected outputs.
```

## Example

Context: 18 participants (sales, operations, finance, IT), 60 minutes, goal: map pain points in order-to-cash before redesign.

- Strategy: split by process segment (order entry / fulfilment / invoicing), each group mixed roles so handoffs are visible; managers and their direct reports in different groups.
- Template per group: | Step | Who | Pain point | How often | Impact (H/M/L) | Workaround | Evidence (seen / heard) |
- Timebox: 5 min brief, 35 min work, 5 min wrap-up, 15 min plenary (3 × 4 min report + 3 min cross-segment handoffs).
- Checkpoint at 15 min: each group has at least 5 rows; at 30 min: Impact column filled.
- Recovery: group stuck -> facilitator asks "walk me through the last order that went wrong"; one voice dominating -> silent writing for 3 minutes, then read out.
- Synthesis: gallery walk, then cluster pain points across segments; pain points at segment boundaries recorded as handoff issues; disagreements kept as "disputed" with both views. Output goes to as-is-process-investigator as Reported evidence.

## Handoffs

- **workshop-agenda-builder**: to place the breakout in the overall agenda and time plan.
- **as-is-process-investigator**: to turn collected current-state material into a validated as-is picture.
- **to-be-process-designer**: when breakouts produced future-state ideas or options.

## Failure modes to avoid

- Breakouts with "discuss" instead of a concrete artifact.
- Different templates for parallel groups, making outputs impossible to compare.
- No synthesis plan, so results are presented and then lost.
- Smoothing over disagreement between groups during synthesis.
- Treating workshop opinions as confirmed facts downstream.
- Flattening politically different stakeholders into one generic audience.
- Hiding missing participant or objective information behind a polished design.
