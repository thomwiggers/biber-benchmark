#!/bin/bash


TMPDIR=$(mktemp -d)
pushd "${TMPDIR}"

cat > biber.tex << "EOF"

\documentclass{article}

\usepackage[backend=biber]{biblatex}

\addbibresource{cryptobib/abbrev0.bib}
\addbibresource{cryptobib/crypto.bib}


\begin{document}

Hi this document is a test.

\nocite{CCS:SchSteWig20}

\printbibliography

\end{document}
EOF

cat > bibtex.tex << "EOF"

\documentclass{article}

\usepackage[backend=bibtex]{biblatex}

\addbibresource{cryptobib/abbrev0.bib}
\addbibresource{cryptobib/crypto.bib}


\begin{document}

Hi this document is a test.

\nocite{CCS:SchSteWig20}

\printbibliography

\end{document}
EOF

git clone --depth=1 https://github.com/cryptobib/export.git cryptobib

start=$(date +%s)
pdflatex --interaction=batchmode biber
biber --quiet --quiet biber
end=$(date +%s)
biber_time=$(expr "$end" - "$start")

start=$(date +%s)
pdflatex --interaction=batchmode bibtex
bibtex -terse bibtex
end=$(date +%s)

bibtex_time=$(expr "$end" - "$start")

popd

rm -rf "${TMPDIR}"

biber --version
echo biber execution time was "$biber_time" seconds
bibtex -version | head -n1
echo bibtex execution time was "$bibtex_time" seconds
lscpu | grep name

