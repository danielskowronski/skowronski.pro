#!/bin/bash

export CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" # TODO: allow CI/CD execution

hugo
"$CHROME" --headless --print-to-pdf-no-header --disable-gpu --no-margins --run-all-compositor-stages-before-draw --print-to-pdf=./static/cv.pdf ./public/cv/index.html 

exiftool ./static/cv.pdf -Author="Daniel Skowroński" -Title="Daniel Skowroński"
rm ./static/cv.pdf_original
