#!/bin/sh

for nb in *.ipynb; do
    out=`echo $nb | sed 's/\(.*\.\)ipynb/\1pdf/'`
    out="../pdfs/$out"
    if [ -f "$out" ]; then
        echo "File \"$out\" already exists"
    else
        jupyter nbconvert --to webpdf --embed-images --allow-chromium-download --output-dir="../pdfs" "$nb"
    fi
done
