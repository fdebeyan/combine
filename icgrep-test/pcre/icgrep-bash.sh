#!/bin/bash

echo "Starting bash file: ../icgrep/combine/icgrep-test/pcre/icgrep-bash.sh"
echo ".{116,}\W{36}\S(?<=\S)((\D|N))[^হ্যালো]*(?=\p{Arabic})ﱇ\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '.{116,}\W{36}\S(?<=\S)((\D|N))[^হ্যালো]*(?=\p{Arabic})ﱇ\1' ../icgrep/combine/icgrep-test/files/file3 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[0-9]*\s{82,}(?=\D)\D[^abc]\W[abc]\d\p{Greek}?\w+" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '[0-9]*\s{82,}(?=\D)\D[^abc]\W[abc]\d\p{Greek}?\w+' ../icgrep/combine/icgrep-test/files/file6 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "((\p{Arabic}|\S))u*(?=.).\d{166,}[XYZ]{151,160}\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg9 ../icgrep/combine/icgrep-test/files/file9 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\t*\p{Thaana}{196,}\w{2,20}[^হ্যালো]?\W(?<=\W)𑱒(?<!\D)" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg12 ../icgrep/combine/icgrep-test/files/file12 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S{28}\s(?<=\s)[a-zA-Z0-9][^abc]{33,64}u(\D)\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '\S{28}\s(?<=\s)[a-zA-Z0-9][^abc]{33,64}u(\D)\1$' ../icgrep/combine/icgrep-test/files/file15 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "⤔(?<!\d)(?=\s)\s\W(?<=\W)\S*" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -f ../icgrep/combine/icgrep-test/regs/reg18 ../icgrep/combine/icgrep-test/files/file18 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^N?\p{Bengali}*.{0,160}[A-Za-z](\W{0,158})[হ্যালো](?<=[হ্যালো])\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '^N?\p{Bengali}*.{0,160}[A-Za-z](\W{0,158})[হ্যালো](?<=[হ্যালো])\1$' ../icgrep/combine/icgrep-test/files/file19 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\S\D+3(?<![^123])([XYZ]{87})[0-9]?\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -e '^\S\D+3(?<![^123])([XYZ]{87})[0-9]?\1' ../icgrep/combine/icgrep-test/files/file21 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(?=\t)\tX(?<![^XYZ])[a-zA-Z0-9]{137,}(\W+)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg29 ../icgrep/combine/icgrep-test/files/file29 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo ".{68}N{0,183}􎶓(?<!u)[হ্যালো]*[^123]+\d{139,}" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '.{68}N{0,183}􎶓(?<!u)[হ্যালো]*[^123]+\d{139,}' ../icgrep/combine/icgrep-test/files/file31 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "N{41,150}(\p{Kannada})[ا-ي](?=\S)\S(\d|.)\W{0,83}Z(?<![^XYZ])\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg32 ../icgrep/combine/icgrep-test/files/file32 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S\d{58,187}N(?<=N)(\D|\p{Cyrillic})\t(u)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -f ../icgrep/combine/icgrep-test/regs/reg34 ../icgrep/combine/icgrep-test/files/file34 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[a-zA-Z0-9]{112,176}.(?<=.)[^হ্যালো]{0,96}\s[abc]\d?Nৌ(?<!\W)\D*$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '[a-zA-Z0-9]{112,176}.(?<=.)[^হ্যালো]{0,96}\s[abc]\d?Nৌ(?<!\W)\D*$' ../icgrep/combine/icgrep-test/files/file37 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(\t?)\p{Gurmukhi}*(?=.).u(?<=u)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -e '(\t?)\p{Gurmukhi}*(?=.).u(?<=u)\1' ../icgrep/combine/icgrep-test/files/file40 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^[XYZ]{0,35}\D{2,}(?=\s)\s\W\t\S{140}([^abc]|u)񄲦(?<!\d)\w(?<=\w)$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '^[XYZ]{0,35}\D{2,}(?=\s)\s\W\t\S{140}([^abc]|u)񄲦(?<!\d)\w(?<=\w)$' ../icgrep/combine/icgrep-test/files/file44 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\t{0,97}\p{Oriya}{83,}\D*(\w|[A-Za-z])[abc]$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -f ../icgrep/combine/icgrep-test/regs/reg47 ../icgrep/combine/icgrep-test/files/file47 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(?=.).[0-9](?<=[0-9])N+\s{0,65}\t{75,}[^XYZ]?" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg49 ../icgrep/combine/icgrep-test/files/file49 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo ".?񁀅(?<!u)(\D{43,178})\d{125}(?=\p{Gurmukhi})ੁ\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '.?񁀅(?<!u)(\D{43,178})\d{125}(?=\p{Gurmukhi})ੁ\1' ../icgrep/combine/icgrep-test/files/file54 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\s*\d+[abc](?<=[abc])(\p{Telugu}{124})\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg56 ../icgrep/combine/icgrep-test/files/file56 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S{132}u{33,185}[^123]N{196,}[হ্যালো]{0,179}\D\s?\w" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P '\S{132}u{33,185}[^123]N{196,}[হ্যালো]{0,179}\D\s?\w' ../icgrep/combine/icgrep-test/files/file60 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[ا-ي]*([XYZ]|\s)佯(?<!\W)\d\tᴪ(?<=\p{Greek})\D?$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '[ا-ي]*([XYZ]|\s)佯(?<!\W)\d\tᴪ(?<=\p{Greek})\D?$' ../icgrep/combine/icgrep-test/files/file63 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S{0,178}\t\s[^হ্যালো]򝑼(?<!\p{Arabic})[123]*\w.\d$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '\S{0,178}\t\s[^হ্যালো]򝑼(?<!\p{Arabic})[123]*\w.\d$' ../icgrep/combine/icgrep-test/files/file65 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^(\D|[^abc])[ا-ي]+N\t{4,}[হ্যালো].{47,93}񝮖(?<!u)" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg66 ../icgrep/combine/icgrep-test/files/file66 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(\d?)u+\W(?<=\W)(?=[^abc])[^abc]\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg71 ../icgrep/combine/icgrep-test/files/file71 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^[0-9]([abc]{0,128})\t+\w*N(?=u)u\s?\d(?<=\d)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '^[0-9]([abc]{0,128})\t+\w*N(?=u)u\s?\d(?<=\d)\1' ../icgrep/combine/icgrep-test/files/file74 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^𞥘(?<!\D)\w\s{44}(?=\S)\Su*\dN$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg77 ../icgrep/combine/icgrep-test/files/file77 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\W*u(?<=u)(\S|\d)\t{10,}.{69}([^হ্যালো])\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P '^\W*u(?<=u)(\S|\d)\t{10,}.{69}([^হ্যালো])\1$' ../icgrep/combine/icgrep-test/files/file81 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\w+[^XYZ]?(\S|u)\p{Gujarati}(?=\D)\D\s[0-9](?<=[0-9])" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -e '\w+[^XYZ]?(\S|u)\p{Gujarati}(?=\D)\D\s[0-9](?<=[0-9])' ../icgrep/combine/icgrep-test/files/file84 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^(\W|[0-9])u\w[^123]\p{Kannada}{19}.\s\d\t\S{24,154}$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg87 ../icgrep/combine/icgrep-test/files/file87 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo ".(?<=.)\t\W{54,119}\w\p{Latin}+(?=u)u򓄑(?<!N)" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P '.(?<=.)\t\W{54,119}\w\p{Latin}+(?=u)u򓄑(?<!N)' ../icgrep/combine/icgrep-test/files/file89 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "u{158,}\s*\D?\p{Hebrew}+(\d|\S)\t{88}򗊸(?<!N)" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg91 ../icgrep/combine/icgrep-test/files/file91 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\s?\p{Latin}*(u+)\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '\s?\p{Latin}*(u+)\1' ../icgrep/combine/icgrep-test/files/file94 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\t򩣆(?<![ا-ي])\S{128,196}.{116}u([XYZ]|\p{Cyrillic})\w(?=\W)\WN+$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P '\t򩣆(?<![ا-ي])\S{128,196}.{116}u([XYZ]|\p{Cyrillic})\w(?=\W)\WN+$' ../icgrep/combine/icgrep-test/files/file100 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "[XYZ]*[^abc](?=\p{Syriac})ܦ\W{0,0}([a-zA-Z0-9]+)\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '[XYZ]*[^abc](?=\p{Syriac})ܦ\W{0,0}([a-zA-Z0-9]+)\1$' ../icgrep/combine/icgrep-test/files/file103 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(\p{Devanagari}?)\d(?<=\d)򯹮(?<![abc])\W{177}\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg105 ../icgrep/combine/icgrep-test/files/file105 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo ".{190}\s+\D{100,125}N?\w(?<=\w)\W{153,}" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P -f ../icgrep/combine/icgrep-test/regs/reg109 ../icgrep/combine/icgrep-test/files/file109 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\S?(\W{108,121})\t(?<=\t)u{47}.*(?=[^হ্যালো])[^হ্যালো]\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -e '\S?(\W{108,121})\t(?<=\t)u{47}.*(?=[^হ্যালো])[^হ্যালো]\1' ../icgrep/combine/icgrep-test/files/file110 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "(?=\d)\d\D+󈺢(?<![0-9])\w{0,15}\S(?<=\S)N?" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -i -P -f ../icgrep/combine/icgrep-test/regs/reg115 ../icgrep/combine/icgrep-test/files/file115 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^\s?\W{180,189}N[^abc]\t{172,}.([abc]|\S)\w$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -i -P -e '^\s?\W{180,189}N[^abc]\t{172,}.([abc]|\S)\w$' ../icgrep/combine/icgrep-test/files/file118 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "󚊸(?<!\s)(?=\D)\D[XYZ]{10,}\S+(.*)[0-9]{77,98}\1" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg119 ../icgrep/combine/icgrep-test/files/file119 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "\s\S{121}[ا-ي]{0,128}(\d)[abc]\W?\t{158,178}\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -c -P '\s\S{121}[ا-ي]{0,128}(\d)[abc]\W?\t{158,178}\1$' ../icgrep/combine/icgrep-test/files/file122 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

echo "^N{0,195}[^হ্যালো](?=[0-9])[0-9]􁢨(?<!\d)\w*.[XYZ]\p{Common}?(\W)\1$" >> ../icgrep/combine/icgrep-test/pcre/icgrep-result
./icgrep -P -f ../icgrep/combine/icgrep-test/regs/reg125 ../icgrep/combine/icgrep-test/files/file125 >> ../icgrep/combine/icgrep-test/pcre/icgrep-result

