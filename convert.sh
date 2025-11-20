#!/bin/bash

# p5.js to L5 Converter
# Usage: ./p5js-to-l5-converter.sh input.js [output.lua]

if [ $# -eq 0 ]; then
    echo "Usage: $0 input.js [output.lua]"
    echo "Converts p5.js JavaScript files to L5 Lua syntax"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="${2:-${INPUT_FILE%.*}.lua}"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found"
    exit 1
fi

echo "Converting $INPUT_FILE to $OUTPUT_FILE..."

# Create temporary file for processing
TEMP_FILE=$(mktemp)

# Add L5 require statement and copy input to temp file
echo 'require("L5")' > "$TEMP_FILE"
echo "" >> "$TEMP_FILE"
cat "$INPUT_FILE" >> "$TEMP_FILE"

# Comments - convert // to --
sed -i 's|//|--|g' "$TEMP_FILE"
sed -i 's|/\*|--\[\[|g' "$TEMP_FILE"
sed -i 's|\*/|\]\]|g' "$TEMP_FILE"

# Function definitions - convert function name(){ } to function name() end
sed -i 's/function \([a-zA-Z_][a-zA-Z0-9_]*\)(\([^)]*\))\s*{/function \1(\2)/g' "$TEMP_FILE"

# For loops - convert for (let i=0;10;i++) to for i=1,10 do
sed -i 's/for\s*(\s*let\s\+\([a-zA-Z_][a-zA-Z0-9_]*\)\s*=\s*\([^;]*\)\s*;\s*\([^;]*\)\s*;\s*[^)]*)\s*{/for \1=\2,\3 do/g' "$TEMP_FILE"

# Remove semicolons at end of lines
sed -i 's/;$//g' "$TEMP_FILE"

# Convert createCanvas to size
sed -i 's/createCanvas(/size(/g' "$TEMP_FILE"

# Replace braces with end (for remaining cases)
sed -i 's/{//g' "$TEMP_FILE"
sed -i 's/}/end/g' "$TEMP_FILE"

# Variable declarations with assignments
sed -i 's/let \([a-zA-Z_][a-zA-Z0-9_]*\)\s*=/local \1 =/g' "$TEMP_FILE"
sed -i 's/var \([a-zA-Z_][a-zA-Z0-9_]*\)\s*=/local \1 =/g' "$TEMP_FILE"
sed -i 's/const \([a-zA-Z_][a-zA-Z0-9_]*\)\s*=/local \1 =/g' "$TEMP_FILE"

# Variable declarations without assignments (convert to local)
sed -i 's/let \([a-zA-Z_][a-zA-Z0-9_]*\);*/local \1/g' "$TEMP_FILE"
sed -i 's/var \([a-zA-Z_][a-zA-Z0-9_]*\);*/local \1/g' "$TEMP_FILE"
sed -i 's/const \([a-zA-Z_][a-zA-Z0-9_]*\);*/local \1/g' "$TEMP_FILE"

# Compound assignment operators
sed -i 's/\([a-zA-Z_][a-zA-Z0-9_]*\)\s*+=\s*\([^;]*\)/\1 = \1 + \2/g' "$TEMP_FILE"
sed -i 's/\([a-zA-Z_][a-zA-Z0-9_]*\)\s*-=\s*\([^;]*\)/\1 = \1 - \2/g' "$TEMP_FILE"
sed -i 's/\([a-zA-Z_][a-zA-Z0-9_]*\)\s*\*=\s*\([^;]*\)/\1 = \1 * \2/g' "$TEMP_FILE"
sed -i 's/\([a-zA-Z_][a-zA-Z0-9_]*\)\s*\/=\s*\([^;]*\)/\1 = \1 \/ \2/g' "$TEMP_FILE"

# Operators
sed -i 's/===/==/g' "$TEMP_FILE"
sed -i 's/!==/~=/g' "$TEMP_FILE"
sed -i 's/!=/~=/g' "$TEMP_FILE"
sed -i 's/&&/ and /g' "$TEMP_FILE"
sed -i 's/||/ or /g' "$TEMP_FILE"

# Control structures - add 'then' to if statements
sed -i 's/if\s*(\([^)]*\))\s*{/if \1 then/g' "$TEMP_FILE"
sed -i 's/else if\s*(\([^)]*\))\s*{/elseif \1 then/g' "$TEMP_FILE"

# Console.log to print
sed -i 's/console\.log/print/g' "$TEMP_FILE"

# Move converted content to output file
mv "$TEMP_FILE" "$OUTPUT_FILE"

echo "Conversion complete! Output saved to $OUTPUT_FILE"

# Clean up
rm -f "$TEMP_FILE" 2>/dev/null

echo ""
echo "Note: This is a basic conversion. You may need to manually adjust:"
echo "- For loop bounds (JavaScript 0-based vs Lua 1-based indexing)"
echo "- Function names that don't have direct L5 equivalents"
echo "- Complex expressions and syntax"
