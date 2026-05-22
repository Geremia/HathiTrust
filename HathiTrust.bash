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
    -H 'Cookie: cf_clearance=lOaVo8V_tzVGOxtCqxUjQMIqtm1NnA0PqSNgwAOlNtI-1779489628-1.2.1.1-8RTF0SQj3KjFeKgdficA588QS7aD7fm1d3E_KhaqxGE6Nrb2dyXFp4tOrcYewo700rABxk2_HfvCyCWRxLwmdM8BAp4dLhfgdtIhgBPHH8TDLVw8.YBHnPr9a5gQqMcggaSJ0tykHeZhOIqXe8r9JzMX_VhqJmpnIgKzihVAHDEB3A9MYDePPsV7CUFrsXXJlE4W_Z_ExzKwaxgMZXa22EE468OkMmeTzneW_6PxKh8FHZgzvjnhGx9NX9afmhz1RePlrVlCdLRitCI0UBe2t_DP8D7_pq.y3fUr8yqQs.PUNGiny9_4FKisBePuAURAhGAO__KlXMCG0fF3h7dtDg; MDPsid=66bee108c1733b88ffbd05811a7bf05c; STICKY=s133; __cf_bm=N7anNLbRlPqZqQK_BXx6DCQVf3Tl9DxuvwVkUI9WlXk-1779489628.7312267-1.0.1.1-CCbuza.j3K7IOw3sEog8XFyufsXFH63Rnd6EybuX_UWZOwf3wbgmzq3QxPI4.3qZ8ogqny2fVaR9JPjXgPmXWLO2F_MjvObMddWQ1Z1y1la02mi3_2j.sYhnX1KiaM3o; __cflb=0H28vo2YUzDUpQqqBsmWqojXJQ84DVup8B7EcR7s2eR; _shibstate_1779489468_937d=https%3A%2F%2Fbabel.hathitrust.org%2Fcgi%2Fpt%3Fid%3Duiug.30112065790534%26seq%3D16; _opensaml_req_cookie%3A1779489468_937d=_a6b7fe2cac160245373b5716a36ba088; _shibstate_1779489513_7fe1=https%3A%2F%2Fbabel.hathitrust.org%2Fcgi%2Fpt%3Fid%3Duiug.30112065790534%26seq%3D16; _opensaml_req_cookie%3A1779489513_7fe1=_c71b81a8f7cd248bff1e117617978058' \
    -H 'Sec-Fetch-Dest: empty' \
    -H 'Sec-Fetch-Mode: cors' \
    -H 'Sec-Fetch-Site: same-origin' \
    -H 'Priority: u=4' \
    -H 'Pragma: no-cache' \
    -H 'Cache-Control: no-cache' \
    -H 'TE: trailers'
  sleep $(($RANDOM*${4:?Max random delay}/32767))
done
