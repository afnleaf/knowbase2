## pdf to readable pdf

**problem:**
- lot of people post academic papers on the internet
- almost always pdf format made for desktop reading
- impossible/awkward to read on mobile

**solution:**
- use a visual LLM to convert pdf papers into readable markdown/html/pdf 
- mobile friendly
- easily shareable
- pdf in -> preferred file out
- readable in browser, downloadable

expand on our solution step by step.

how to implement?

**discussion**
take screenshots of each pdf page
process each page
reassemble after processing
allows for parallel execution

## requirements
- handle various pdf formats (scanned documents, digital native, mixed)
- preserve original document structure
    - key sections (abstract, headers, body text, references, etc)
    - detect figures, tables, equations (all figures?)
    - footnotes, citations
    - map document hierarchy
    - handling multi column layouts
    - preserve scientific notation and special characters
- OCR
- vector text extraction (digital pdf)
- figure extraction (anything non text)
- responsive layout generation
    - single column flow
    - adjustable text size and margins
    - responsive images / tables
    - collapsible sections?
    - navigation quick links
- dark/light mode
- search
- annotation?
- content completeness verification
- distribution, web based platform with multiple sharing/downloading, etc options


## Minimum Viable Test
Input PDF → Screenshot Pages → Basic Layout Analysis → 
Simple HTML/PDF Generation → Output File
- Input: Single PDF file
- Output: Mobile-friendly HTML or PDF
- Basic single-column layout
- Screenshots for complex content
- Simple navigation between sections
- PDF page screenshot capability
- Visual LLM for basic content analysis
- HTML template for reconstruction
- PDF generation library (if PDF output needed)
- Simple progress reporting in CLI

## tech
colpali

docai

https://huggingface.co/spaces/opencompass/open_vlm_leaderboard



