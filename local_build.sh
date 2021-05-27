#! /bin/bash
export DATABASE_HOST=not-used
export DATABASE_USER=not-used
export DATABASE_PASSWORD=not-used
export DATABASE_DB_NAME=not-used

echo "Code Analysis"
python3 -m pylint *.py
echo

echo "Unit tests"
nosetests --with-xunit --cover-xml --cover-xml-file=coverage.xml --with-coverage --cover-branches --cover-erase --cover-package=.

cat coverage.xml
