#!/usr/bin/bash

for d in `seq ${1:?First Page} ${2:?Last Page}`
do
  i=`printf "%03d" $d`
  curl -Lo $i.png "https://babel.hathitrust.org/cgi/imgsrv/image?id=${3:?ID}&height=2092&seq=${d}" \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0' \
    -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' \
    -H 'Accept-Language: en-US,en;q=0.5' \
    -H 'Connection: keep-alive' \
    -H 'Upgrade-Insecure-Requests: 1' \
    -H 'Sec-Fetch-Dest: document' \
    -H 'Sec-Fetch-Mode: navigate' \
    -H 'Sec-Fetch-Site: none' \
    -H 'Priority: u=0, i' \
    -H 'Pragma: no-cache' \
    -H 'Cache-Control: no-cache' \
    -H 'TE: trailers'
  sleep $(($RANDOM*${4:?Max random delay}/32767))
done
