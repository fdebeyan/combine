#!/bin/bash

echo "Starting bash file: ../icgrep/combine/icgrep-test/pcre/icgrep-bash.sh"
echo "(\p{Telugu}{128,})[^abc]{142}\S(?<=\S)(\D|\W).*(?=N)N\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '(\p{Telugu}{128,})[^abc]{142}\S(?<=\S)(\D|\W).*(?=N)N\1' ../icgrep/combine/icgrep-test/files/file3 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\s*\w{34,}(?=\D)\D[0-9]\d[^123][XYZ]\W?\p{Greek}+" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '\s*\w{34,}(?=\D)\D[0-9]\d[^123][XYZ]\W?\p{Greek}+' ../icgrep/combine/icgrep-test/files/file6 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(\d|.)(u*)(?=[abc])[abc]\S{160,}[ا-ي]{12,44}\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg9 ../icgrep/combine/icgrep-test/files/file9 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\t*\p{Bengali}{8,}\W{99,126}\D?\w(?<=\w)1(?<![^123])" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg12 ../icgrep/combine/icgrep-test/files/file12 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\D{71}[ا-ي](?<=[ا-ي])[^123]\t{37,117}(\S)\s\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '\D{71}[ا-ي](?<=[ا-ي])[^123]\t{37,117}(\S)\s\1$' ../icgrep/combine/icgrep-test/files/file15 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo " (?<!\S)(?=\W)\W\d(?<=\d)\s*" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -f ../icgrep/combine/icgrep-test/regs/reg18 ../icgrep/combine/icgrep-test/files/file18 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^(N?)[a-zA-Z0-9]*\w{0,88}\p{Gujarati}.{61,197}\W(?<=\W)\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '^(N?)[a-zA-Z0-9]*\w{0,88}\p{Gujarati}.{61,197}\W(?<=\W)\1$' ../icgrep/combine/icgrep-test/files/file19 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\D[A-Za-z]+Y(?<![^XYZ])([123]{110})\S?\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -e '^\D[A-Za-z]+Y(?<![^XYZ])([123]{110})\S?\1' ../icgrep/combine/icgrep-test/files/file21 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(?=[A-Za-z])[A-Za-z]􌊂(?<!\t)\w{74,}(\W+)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg29 ../icgrep/combine/icgrep-test/files/file29 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\d+u?[^abc]{105}N{6,28}[XYZ]*" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '\d+u?[^abc]{105}N{6,28}[XYZ]*' ../icgrep/combine/icgrep-test/files/file31 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S[^123]{30,87}(N|.)槒(?<!\s)(?=\p{Cyrillic})ӑ\W(\d{0,130})\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg32 ../icgrep/combine/icgrep-test/files/file32 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "((\S|\D))\t[হ্যালো]u{61,94}N\d(?<=\d)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg34 ../icgrep/combine/icgrep-test/files/file34 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\D{113,135}\W(?<=\W)\d{0,170}.[ا-ي][^abc]?\s𕑮(?<!N)[হ্যালো]*$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '\D{113,135}\W(?<=\W)\d{0,170}.[ا-ي][^abc]?\s𕑮(?<!N)[হ্যালো]*$' ../icgrep/combine/icgrep-test/files/file37 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "u?(\p{Syriac}*)(?=\t)\t\s(?<=\s)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -e 'u?(\p{Syriac}*)(?=\t)\t\s(?<=\s)\1' ../icgrep/combine/icgrep-test/files/file40 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\t{0,82}\W{139,}(?=\D)\D\su[123]{110}(\d|[^abc])	(?<!\S)\w(?<=\w)$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '^\t{0,82}\W{139,}(?=\D)\D\su[123]{110}(\d|[^abc])	(?<!\S)\w(?<=\w)$' ../icgrep/combine/icgrep-test/files/file44 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\D{0,181}\w{43,}[হ্যালো]*([a-zA-Z0-9]|\t)\p{Telugu}$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -f ../icgrep/combine/icgrep-test/regs/reg47 ../icgrep/combine/icgrep-test/files/file47 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(?=[A-Za-z])[A-Za-z]\t(?<=\t)N+.{0,126}\s{95,}[^123]?" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg49 ../icgrep/combine/icgrep-test/files/file49 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\D?񴥴(?<!\d).{21,99}(\w{179})(?=u)u\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '\D?񴥴(?<!\d).{21,99}(\w{179})(?=u)u\1' ../icgrep/combine/icgrep-test/files/file54 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(\d*)N+ᾜ(?<=\p{Greek})[123]{59}\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg56 ../icgrep/combine/icgrep-test/files/file56 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[abc]{188}\w{5,193}uN{10,}\S{0,173}\D[^123]?\s" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '[abc]{188}\w{5,193}uN{10,}\S{0,173}\D[^123]?\s' ../icgrep/combine/icgrep-test/files/file60 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\W*([0-9]|\s)𑛅(?<!\D)[হ্যালো]\dﱚ(?<=\p{Arabic})\t?$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '\W*([0-9]|\s)𑛅(?<!\D)[হ্যালো]\dﱚ(?<=\p{Arabic})\t?$' ../icgrep/combine/icgrep-test/files/file63 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[^123]*\p{Common}{90,99}\s{173,}\d+(\t|\d)\w{59}[XYZ]?\S{0,173}" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '[^123]*\p{Common}{90,99}\s{173,}\d+(\t|\d)\w{59}[XYZ]?\S{0,173}' ../icgrep/combine/icgrep-test/files/file65 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^([XYZ]|\t)[^abc][0-9]𑑙(?<!\D)u+N{163,}.{17,120}" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg66 ../icgrep/combine/icgrep-test/files/file66 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[^হ্যালো](?<=[^হ্যালো])(\d+)(?=[abc])[abc]u?\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg71 ../icgrep/combine/icgrep-test/files/file71 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^u(?=\w)\w\s*[XYZ]?\d(?<=\d)(\t{0,142})\D+[A-Za-z]\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '^u(?=\w)\w\s*[XYZ]?\d(?<=\d)(\t{0,142})\D+[A-Za-z]\1' ../icgrep/combine/icgrep-test/files/file74 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^uN\s{175}(?=\S)\S򥵈(?<!\d)\w*\D$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg77 ../icgrep/combine/icgrep-test/files/file77 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^(\W*)u(?<=u)(\t|[^XYZ]).{170,}\S{172}\D\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P '^(\W*)u(?<=u)(\t|[^XYZ]).{170,}\S{172}\D\1$' ../icgrep/combine/icgrep-test/files/file81 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

