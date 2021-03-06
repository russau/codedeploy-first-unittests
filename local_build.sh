#! /bin/bash
export DATABASE_HOST=not-used
export DATABASE_USER=not-used
export DATABASE_PASSWORD=not-used
export DATABASE_DB_NAME=not-used

echo "Code Analysis"
python3 -m pylint *.py
echo

echo "Unit tests"
pytest test_application.py  --cov-report=xml --cov application --cov-branch
