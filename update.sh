#!/bin/sh

# Updates the github page with current PDFs.

if [ -n "$(git diff --name-only)" ]; then
  echo "Please commit changes!"
  exit 1
fi

FILES="basic.pdf competitive.pdf points.pdf sheets.pdf"
make all
mv sheets/sheets.pdf sheets.pdf
for FILE in $FILES; do
    mv $FILE $FILE.backup
done
git checkout gh-pages
for FILE in $FILES; do
    mv $FILE.backup $FILE
done
git commit -am 'update PDFs'
git push origin
git checkout master
rm $FILES
