#!/usr/bin/bash

for d in `seq ${1:?First Page} ${2:?Last Page}`
do
  i=`printf "%03d" $d`
  curl -Lo $i.png "https://babel.hathitrust.org/cgi/imgsrv/image?id=${3:?ID}&seq=$d" \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0' \
    -H 'Accept: */*' \
    -H 'Accept-Language: en-US,en;q=0.5' \
    -H 'Accept-Encoding: gzip, deflate, br, zstd' \
    -H "Referer: https://babel.hathitrust.org/cgi/pt?id=$3&seq=$d" \
    -H 'Connection: keep-alive' \
    -H 'Sec-Fetch-Dest: empty' \
    -H 'Sec-Fetch-Mode: cors' \
    -H 'Sec-Fetch-Site: same-origin' \
    -H 'Priority: u=4' \
    -H 'Pragma: no-cache' \
    -H 'Cache-Control: no-cache' \
    -H 'TE: trailers'
  sleep $(($RANDOM*${4:?Max random delay}/32767))
done



