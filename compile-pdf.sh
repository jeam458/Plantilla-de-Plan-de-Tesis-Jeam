#!/bin/bash
# Compila el proyecto LaTeX y abre el PDF.
# Uso: ./compile-pdf.sh   o   bash compile-pdf.sh

set -e
cd "$(dirname "$0")"
PDFLATEX="/Library/TeX/texbin/pdflatex"
BIBTEX="/Library/TeX/texbin/bibtex"

echo "Compilando main.tex..."
$PDFLATEX -interaction=nonstopmode main.tex >/dev/null 2>&1
echo "Ejecutando bibtex..."
$BIBTEX main 2>/dev/null || true
echo "Segunda y tercera pasada pdflatex..."
$PDFLATEX -interaction=nonstopmode main.tex >/dev/null 2>&1
$PDFLATEX -interaction=nonstopmode main.tex 2>&1 | tail -3

if [ -f main.pdf ]; then
  echo "Abriendo main.pdf"
  open main.pdf
else
  echo "Error: no se generó main.pdf"
  exit 1
fi
