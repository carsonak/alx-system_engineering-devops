#!/usr/bin/env bash
# Testing regex and expr

temp='abcABC123AAABCabc&@___4321'
echo "$temp -> [${#temp}]"
# echo "'[:alpha:]*' -> $(expr "$temp" : '[:alpha:]*[:A-Z:]*')"

# Replace all alphabets and underscores with .
echo "${temp//[[:alnum:]_]/\.}"

echo "${temp%%[[:digit:]]*}"
