#!/bin/bash

# Base directory
BASE_DIR="Problem_Solving"

# Create base directory
mkdir -p "$BASE_DIR"

# Unit-wise topics with titles (only first 2 words matter for filenames)
declare -A unit_titles=(
  ["Unit1"]="Introduction to problem solving and review of set theory;Invariants Chocolate Bars;Empty Boxes;The Tumbler Problem;Crossing a River Brute Force;Nervous Couples;The Bridge Problem and Conditional Statements"
  ["Unit2"]="Matchstick Games;Winning Strategies Assumptions Labelling Positions;Winning Strategies Formulating Requirements;Subtraction Set Games;Sums of Games A simple sum game;Sums of Games Maintain Symmetry More Simple Sums;Sums of Games Evaluating positions Using the Mex function"
  ["Unit3"]="Logic Puzzles;Calculation Logic Propositions Knights and Knaves;Calculation Logic Boolean Equality Hidden Treasures;Calculation Logic Equals for Equals;Equivalence and Continuous Equalities;Negation Contraposition;Negation Handshake Problem Inequivalence"
  ["Unit4"]="Induction Example Problems Cutting the Plane;Induction Triominoes Looking for Patterns;Induction The Need for Proof From Verification to Construction;Fake Coin Detection Problem Formulation;Fake Coin Detection Problem Solution;Tower of Hanoi Specification and Solution;Tower of Hanoi Inductive Solution Iterative Solution;Language of Mathematics Variables Expressions and Laws;Language of Mathematics Functions Algebraic Properties Boolean Operators and Binary Relations"
)

# Loop through each unit
for unit in Unit1 Unit2 Unit3 Unit4; do
  mkdir -p "$BASE_DIR/$unit"
  
  # Split topics for this unit
  IFS=';' read -ra topics <<< "${unit_titles[$unit]}"
  
  for topic in "${topics[@]}"; do
    # Take first two words for filename
    filename=$(echo "$topic" | awk '{print $1"_"$2".md"}' | sed 's/[^a-zA-Z0-9_.-]//g')
    
    # Create file
    touch "$BASE_DIR/$unit/$filename"
  done
done

echo "✅ Folder structure with renamed markdown files created in '$BASE_DIR'"
