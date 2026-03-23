# FYP LaTeX Thesis

LaTeX project for your final year project report/thesis.

## 1. Install LaTeX (one-time)

You need a TeX distribution and compilers. On **Ubuntu/Debian**, run in a terminal (you will be asked for your password):

```bash
sudo apt-get update
sudo apt-get install -y texlive texlive-latex-extra texlive-fonts-recommended \
  texlive-science texlive-bibtex-extra biber latexmk
```

- **texlive** – core (pdflatex, xelatex, lualatex)
- **texlive-latex-extra** – common packages
- **texlive-fonts-recommended** – recommended fonts
- **texlive-science** – algorithms, SI units, etc.
- **texlive-bibtex-extra** – bibliography tools
- **biber** – modern bibliography backend
- **latexmk** – auto multi-pass builds

To verify:

```bash
pdflatex --version
latexmk --version
```

## 2. Build the PDF

From this directory:

```bash
# One-off build
make
# or
latexmk -pdf main.tex

# Continuous build (recompile on save, for preview)
make watch
# or
latexmk -pdf -pvc main.tex
```

Output: `main.pdf`.

## 3. Clean build artifacts

```bash
make clean      # remove aux/log/temp files
make distclean  # also remove main.pdf
```

## 4. Project layout

- `main.tex` – main document (edit title, author, and uncomment `\input{chapters/...}` as you add chapters)
- `chapters/` – one `.tex` file per chapter (e.g. `introduction.tex`, `methodology.tex`)
- `figures/` – put images here and use `\includegraphics{figures/filename}`
- `references.bib` – BibTeX entries; cite with `\cite{key}`
- `.latexmkrc` – latexmk config (e.g. use biber)
- `Makefile` – `make`, `make watch`, `make clean`

After installing the packages above, run `make` to build the thesis.
