#/bin/bash
rm ~/Downloads/tests.zip
zip -r ~/Downloads/tests.zip .
aws s3 cp ~/Downloads/tests.zip s3://rrs-apps/
