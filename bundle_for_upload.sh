#!/bin/bash

mkdir beamerposter
cp README.md beamerposter.tex beamerposter.sty examples/00/example.tex themes/*.sty beamerposter
cd beamerposter
mv README.md README
pdflatex beamerposter
rm beamerposter.aux beamerposter.log 
cd ..
zip -r beamerposter-$(date +%Y%m%d).zip beamerposter
