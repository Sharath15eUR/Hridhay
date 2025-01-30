#!/bin/bash
fname="input.txt"
if [[ ! -e $fname ]]; then
echo "File does nt exists"
exit 1
fi

if [[ ! -r $fname ]]; then
echo "File is not readable"
exit 1
fi

touch output.txt
chmod u+rw output.txt

while read -r line; do
if [[ "$line" == *"frame.time"* ]]; then
echo $line>>output.txt
fi

if [[ "$line" == *"wlan.fc.type"* ]]; then
echo $line>>output.txt
fi

if [[ "$line" == *"wlan.fc.subtype"* ]]; then
echo $line>>output.txt
fi
done < "$fname";
