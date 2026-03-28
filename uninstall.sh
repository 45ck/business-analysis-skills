#!/usr/bin/env bash
set -euo pipefail

SKILLS=(
  pestle-analysis
  swot-prioritisation
  porters-five-forces
  value-proposition-analysis
  stakeholder-register
  power-interest-grid
  raci-matrix
  interview-design
  questionnaire-design
  workshop-design
  observation-study-plan
  prototype-elicitation
  use-case-specification
  process-model-spec
  moscow-prioritisation
  see-i-clarifier
  catwoe-root-definition
  acceptance-criteria-writer
  ambiguity-hunter
  assumption-extractor
  constraint-detector
  definition-of-done-drafter
  edge-case-elicitor
  functional-vs-nonfunctional-splitter
  problem-statement-refiner
  proto-requirements-normalizer
  requirements-conflict-checker
  requirements-gap-auditor
  requirements-interrogator
  requirements-prioritizer
  requirements-traceability-starter
  raci-rasci-builder
  stakeholder-communication-planner
  probe-question-generator
  pyramid-funnel-diamond-interviewer
  questionnaire-pilot-checker
  breakout-structure-designer
  as-is-process-investigator
  to-be-process-designer
  business-rule-extractor
  benefit-hypothesis-writer
  business-problem-framing
  strategy-analysis
  stakeholder-analysis
  requirements-elicitation
  process-modelling-and-improvement
  ssm-analysis
  requirements-packager
  critical-thinking-bias-check
  assumptions-constraints-log
  evidence-gap-review
  deliverable-consistency-check
  requirements-quality-check
)

for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill"
  rm -rf "$HOME/.agents/skills/$skill"
  echo "Removed $skill"
done

echo "Done."
