#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt" # saving the manifesto to a file


# creating a paragraph using $TOOL, $FREEDOM, $BUILD
# and write it to $OUTPUT using echo and >>
# ---------------------------------------------------------

# We use a single '>' first to create/overwrite the file, ensuring a fresh start
echo "--- My Open Source Manifesto ($DATE) ---" > "$OUTPUT"
echo "" >> "$OUTPUT"

# We use '>>' for the rest to append to the end of the file
echo "I rely on $TOOL for my daily activities . It is a constant reminder of what a community led collaborative project can achieve." >> "$OUTPUT"
echo "open-source community comes down to a single concept: $FREEDOM. the 4 freedoms of open source software ensure that all projects under the open source umbrella exercise the same freedom" >> "$OUTPUT"
echo "Inspired by my people in my life, I commit to paying it forward. One day, I will build $BUILD and release it into the wild, free for anyone to use, study, and improve." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# Display the final file to the user
cat "$OUTPUT"
