#!/bin/bash

data=$(curl https://v6.exchangerate-api.com/v6/f546d3fdabf871e879e2dd93/latest/USD | jq '.conversion_rates.MKD')
data=$(echo "${data}" | awk '{printf("%.1f \n",$1)}')
echo '{"text":"1$ ⟶ '$data'MKD ","tooltip":"Exchange Rate","class":"$class"}'
