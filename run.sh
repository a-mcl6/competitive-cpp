#!/bin/bash
# run.sh - Compile and run a C++ program in a given folder
# Usage: ./run.sh aoc2025day1

if [ -z "$1" ]; then
    echo "Please provide the folder name. Example: ./run.sh aoc2025day1"
    exit 1
fi

DAY_FOLDER="$1"
MAIN_FILE="$DAY_FOLDER/main.cpp"

if [ ! -f "$MAIN_FILE" ]; then
    echo "Error: $MAIN_FILE does not exist."
    exit 1
fi

# Compile
clang++ -std=c++20 -O2 "$MAIN_FILE" -o "$DAY_FOLDER/a.out"
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Run
echo "Running $DAY_FOLDER/main.cpp..."
"$DAY_FOLDER/a.out"
