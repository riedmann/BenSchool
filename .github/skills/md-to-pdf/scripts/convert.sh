#!/bin/bash

# Markdown to PDF Conversion Script
# Usage: ./convert.sh file.md [file2.md ...]
# Or: ./convert.sh *.md for batch conversion

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Create output directory if it doesn't exist
OUTPUT_DIR="pdfs"
mkdir -p "$OUTPUT_DIR"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo -e "${RED}Error: Pandoc is not installed.${NC}"
    echo "Please install it first:"
    echo "  macOS:   brew install pandoc"
    echo "  Ubuntu:  sudo apt-get install pandoc"
    echo "  Windows: choco install pandoc"
    exit 1
fi

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
    echo -e "${RED}Error: No input files specified.${NC}"
    echo "Usage: $0 file.md [file2.md ...]"
    echo "   Or: $0 *.md"
    exit 1
fi

# Counter for successful conversions
count=0
total=$#

echo -e "${BLUE}Starting markdown to PDF conversion...${NC}"
echo "Output directory: $OUTPUT_DIR"
echo ""

# Process each file
for input_file in "$@"; do
    # Check if file exists
    if [ ! -f "$input_file" ]; then
        echo -e "${RED}Warning: File not found: $input_file${NC}"
        continue
    fi
    
    # Check if file is a markdown file
    if [[ ! "$input_file" =~ \.md$ ]]; then
        echo -e "${RED}Warning: Not a markdown file: $input_file${NC}"
        continue
    fi
    
    # Get the base filename without path and extension
    filename=$(basename "$input_file" .md)
    
    # Set output path
    output_file="$OUTPUT_DIR/${filename}.pdf"
    
    echo -e "Converting: ${BLUE}$input_file${NC} → ${GREEN}$output_file${NC}"
    
    # Convert markdown to PDF
    # Using options:
    # -V geometry:margin=1in - Set 1 inch margins
    # --pdf-engine=xelatex - Better Unicode support (German characters)
    # -f markdown - Explicitly specify input format
    if pandoc "$input_file" \
        -o "$output_file" \
        -f markdown \
        --pdf-engine=xelatex \
        -V geometry:margin=1in \
        -V documentclass=article \
        -V fontsize=12pt \
        -V lang=de 2>/dev/null; then
        
        echo -e "${GREEN}✓ Success${NC}"
        ((count++))
    else
        echo -e "${RED}✗ Failed to convert $input_file${NC}"
    fi
    
    echo ""
done

# Summary
echo -e "${BLUE}Conversion complete!${NC}"
echo -e "Successfully converted: ${GREEN}$count${NC} of ${BLUE}$total${NC} files"
echo -e "Output location: ${GREEN}$OUTPUT_DIR/${NC}"

if [ $count -gt 0 ]; then
    echo ""
    echo "Generated PDFs:"
    ls -lh "$OUTPUT_DIR"/*.pdf 2>/dev/null | awk '{print "  " $9 " (" $5 ")"}'
fi
