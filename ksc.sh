#!/usr/bin/env bash
#
#Create keyboard shortcut cheat sheet
#   Probably more effort then just creating
#   file in editor
#
# Usage: ksc.sh {APP} {#SHOTCUTS}

file="$1.md"
echo -n "Full app name: "; read full
echo -n "Description: "; read desc
echo -n "URL: "; read url
OLDIFS=$IFS
for (( i=0; i<"$2"; ++i )); do
    echo -n "Key (ex. CTRL+ALT+E): "; read key["$i"]
    IFS='+' read -ra keys <<< "${key[$i]}"
    keys=("${keys[@]/#/<kbd>}")
    keys=("${keys[@]/%/<\/kbd>}")
    key["$i"]=""
    for n in "${keys[@]}"; do
        key["$i"]=$( echo "${key[$i]}${n}+")
    done
    key["$i"]="${key[$i]::-1}"
    echo -n "Function: "; read func["$i"]
done
cat << EOF > /tmp/"$file"
# $1

> $full  
> $desc  
> More information: <$url>.

|Shortcut|Description|
|:--|:--|
EOF
for (( i=0; i<"$2"; ++i )); do
    echo "|${key[$i]}|${func[$i]}|" >> /tmp/"$file"
done
IFS=$OLDIFS
