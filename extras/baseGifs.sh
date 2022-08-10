#!/bin/bash
#first argument is the symbol
kana=$1
count=0
for color in 255,140,140 255,214,140 140,255,140 140,255,255 140,181,255 214,140,255 255,140,255 255,107,247 255,107,181 255,107,107
do
	magick convert -background transparent -fill 'rgb('$color')' -font hiragino.ttc -pointsize 200 label:"$kana" ./"$kana$count".gif
	#for japanese, hiragino.ttc -- for english, arialbold.ttf
	let count+=1
done
convert -delay 5 -loop 0 ./"$kana"*.gif ./"$kana".gif
rm ./"$kana"[0123456789].gif
