#!/bin/bash

mkdir beamerposter
cp README.md beamerposter.tex beamerposter.sty examples/00/example.tex beamerposter
cd beamerposter
pdflatex beamerposter
rm beamerposter.aux beamerposter.log 
cd ..
mv 
zip -r beamerposter-$(date +%Y%m%d).zip beamerposter
