---
name: md-to-pdf
description: "Convert markdown files to PDF using Pandoc. Use when exporting markdown documentation, learning materials, or quiz files to PDF format. Supports single file or batch conversion."
argument-hint: 'A markdown file path or "all" for batch conversion'
user-invocable: true
---

# Markdown to PDF Conversion

Convert markdown files to professional PDF documents using Pandoc.

## When to Use

- Export learning materials to PDF for printing or distribution
- Create PDF versions of quiz files for offline use
- Convert documentation to PDF format
- Batch convert multiple markdown files at once

## Prerequisites

Pandoc must be installed on your system:

```bash
# macOS
brew install pandoc

# Ubuntu/Debian
sudo apt-get install pandoc

# Windows
choco install pandoc
```

## Procedure

### Single File Conversion

1. **Identify the markdown file** you want to convert
2. **Run the conversion** using the [convert script](./scripts/convert.sh)
3. **Find the PDF** in the `pdfs/` folder (created automatically)

### Batch Conversion

1. **Navigate to target directory** containing markdown files
2. **Run batch conversion** for all `.md` files
3. **Review output** in the `pdfs/` folder

## Usage Examples

### Convert a single file

```bash
./github/skills/md-to-pdf/scripts/convert.sh subject/biology1/voegel-wirbeltiere.md
```

Output: `pdfs/voegel-wirbeltiere.pdf`

### Convert all markdown files in a folder

```bash
./github/skills/md-to-pdf/scripts/convert.sh subject/biology1/*.md
```

Output: All PDFs in `pdfs/` folder

### Convert questions folder

```bash
./github/skills/md-to-pdf/scripts/convert.sh subject/biology1/questions/*.md
```

## Output Structure

```
pdfs/
├── voegel-wirbeltiere.pdf
├── reptilien-oesterreich.pdf
└── biology-overall-1-fragen.pdf
```

## PDF Features

The generated PDFs include:

- Proper heading hierarchy
- Formatted code blocks
- Tables (if present in markdown)
- Image references (relative paths resolved)
- Metadata (title from filename)

## Customization

### Add custom styling

Edit the conversion command in the script to include a CSS file:

```bash
pandoc "$input" -o "$output" --css=custom.css
```

### Include table of contents

Add `--toc` flag:

```bash
pandoc "$input" -o "$output" --toc
```

### Set PDF engine

Specify a different PDF engine:

```bash
pandoc "$input" -o "$output" --pdf-engine=xelatex
```

## Troubleshooting

**Pandoc not found:**

- Install Pandoc using the prerequisites commands above
- Verify installation: `pandoc --version`

**Images not showing:**

- Ensure image paths are relative to the markdown file
- Check that image files exist in the specified locations

**German characters broken:**

- Use XeLaTeX engine: `--pdf-engine=xelatex`
- Ensure UTF-8 encoding in markdown files

## Notes

- Original markdown files are never modified
- PDFs are saved to `pdfs/` folder to keep workspace organized
- Images must be accessible relative to the markdown file location
- Large files may take longer to convert
