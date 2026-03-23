# Thesis LaTeX Project

Full thesis (Chapters 1–6, Appendices A–E, Bibliography) in a single-column, 12pt layout. **No COMSATS cover pages** — add those yourself before or after `\tableofcontents`.

## Formatting

- **Class:** `thesis-report.cls` (based on `report`, 12pt, A4, `openright`)
- **Font:** Times New Roman–like (`mathptmx`), 12pt throughout
- **Chapters:** Start on **odd (right) pages**
- **Citations:** **IEEE style** via `\bibliographystyle{IEEEtran}` and `references.bib`
- **Layout:** **Single column** (not two-column)

## Build

```bash
cd thesis-latex
pdflatex main
bibtex main
pdflatex main
pdflatex main
```

Or use `latexmk -pdf main.tex` if available.

**Note:** The default is `plain` so the project builds without extra packages. For **IEEE-style** citations, install `IEEEtran.bst` (e.g. `texlive-bibtex-extra` or the `ieeetran` package) and in `main.tex` change `\bibliographystyle{plain}` to `\bibliographystyle{IEEEtran}`.

## Structure

- `main.tex` — starts from TOC; includes List of Figures, List of Tables, Abbreviations, then chapters, appendices, bibliography
- `chapters/chapter01.tex` — Introduction (full)
- `chapters/chapter02.tex` — Literature Review (**placeholder**: replace with your Ch 2 content)
- `chapters/chapter03.tex` — Methodology (**placeholder**: replace with your Ch 3 content)
- `chapters/chapter04.tex` — Implementation and Testing (full)
- `chapters/chapter05.tex` — Results and Discussion (full)
- `chapters/chapter06.tex` — Conclusions and Future Work (full)
- `appendices.tex` — Appendices A (SDG), B (Code), C (Schematics), D (BOM), E (Timeline)
- `references.bib` — IEEE-style BibTeX; add more entries as needed
- `figures/` — put all figure files here; see `figures/FIGURES_README.txt` for list and placeholder instructions

## Figures

Figure placeholders are in the .tex files (boxed placeholders with “Add figure: …”). To add a figure:

1. Put the file in `figures/` (e.g. `figures/system_architecture.jpg`).
2. In the .tex file, find the placeholder and replace the `\fbox{\parbox{...}}` block with:
   ```latex
   \includegraphics[width=0.85\textwidth]{figures/filename}
   ```
3. Keep the existing `\caption` and `\label`.

See `figures/FIGURES_README.txt` for the full list of suggested figures and where they are used.

## Adding cover pages

Insert your COMSATS title page and any other front matter *before* `\tableofcontents` in `main.tex`, or use a separate file (e.g. `frontmatter.tex`) and `\input{frontmatter}` at the start of the document body.
