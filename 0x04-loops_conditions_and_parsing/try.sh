#!/usr/bin/env bash
# Testing pattern substitutions and regex

temp='abcABC123AAABCabc&@___4321'
echo "$temp -> [${#temp}]"
# echo "'[:alpha:]*' -> $(expr "$temp" : '[:alpha:]*[:A-Z:]*')"

# Replace all alphabets and underscores with .
echo "${temp//[[:alnum:]_]/\.}"

echo "${temp%%[[:digit:]]*}"
