#!/bin/bash

echo "Starting bash file: ../icgrep/combine/icgrep-test/grep/icgrep-bash.sh"
echo "^\W{0,0}((\w|[XYZ]))\u0CCD{38}\S*[^XYZ]{19,}\d+.{52,98}\N{Latin}?\t\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg1 ../icgrep/combine/icgrep-test/files/file1 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G '' ../icgrep/combine/icgrep-test/files/file2 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\d{87,150}\t?[ا-ي]{0,40}\w\u0482[XYZ]+$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg4 ../icgrep/combine/icgrep-test/files/file4 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "w\?\(.\{8,147\}\)l\{108\}\(N\|\S\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg5 ../icgrep/combine/icgrep-test/files/file5 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\u083B|\W)(.{114,})\s+\W{0,7}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '(\u083B|\W)(.{114,})\s+\W{0,7}\1'  ../icgrep/combine/icgrep-test/files/file7 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N*t\{58,87\}u\{190\}p\{0,31\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg8 ../icgrep/combine/icgrep-test/files/file8 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\S*\w[a-zA-Z0-9]{117}\s+$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '^\S*\w[a-zA-Z0-9]{117}\s+$'  ../icgrep/combine/icgrep-test/files/file10 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "L\{0,148\}\(t\+\)D\(notWord\|w\).\?\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -e 'L\{0,148\}\(t\+\)D\(notWord\|w\).\?\1' ../icgrep/combine/icgrep-test/files/file11 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\d\p{Gujarati}\N{Latin}{89,}\s?\u0D25+([হ্যালো]{8})\t\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg13 ../icgrep/combine/icgrep-test/files/file13 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "r\{46\}l\{0,64\}.\?t\{27,\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G 'r\{46\}l\{0,64\}.\?t\{27,\}' ../icgrep/combine/icgrep-test/files/file14 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[^123]{63,166}\u1F8E+(\p{Tamil}|[XYZ]).{135}\d*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg16 ../icgrep/combine/icgrep-test/files/file16 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N\+.\{178,189\}\(p\|u\)t\{157,\}D\{0,66\}l\{166\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G 'N\+.\{178,189\}\(p\|u\)t\{157,\}D\{0,66\}l\{166\}' ../icgrep/combine/icgrep-test/files/file17 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^([0-9]{60,})\w\N{Gujarati}*\W?\D{99,165}(\u0CA8|\d)\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg20 ../icgrep/combine/icgrep-test/files/file20 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\D*.{77}\w{174,}\d{0,83}(\t|[^123])" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg22 ../icgrep/combine/icgrep-test/files/file22 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\D{84,}\S?\p{Kannada}{140,144}\t+" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -f ../icgrep/combine/icgrep-test/regs/reg23 ../icgrep/combine/icgrep-test/files/file23 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "notWord\{0,154\}\(L\?\)\(l\|N\)u*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg24 ../icgrep/combine/icgrep-test/files/file24 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S\{0,107\}d\{30,\}l\?u\{104\}r" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -e '\S\{0,107\}d\{30,\}l\?u\{104\}r' ../icgrep/combine/icgrep-test/files/file25 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(.{0,98})[a-zA-Z0-9]+(\D|\D)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg26 ../icgrep/combine/icgrep-test/files/file26 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^udp\{55\}\S\{98,138\}notWord\(w\{0,98\}\)\s\+\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G '^udp\{55\}\S\{98,138\}notWord\(w\{0,98\}\)\s\+\1$' ../icgrep/combine/icgrep-test/files/file27 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "lt\s\{112,\}.\(w\|N\)$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -e 'lt\s\{112,\}.\(w\|N\)$' ../icgrep/combine/icgrep-test/files/file28 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^N*w\?D\{140\}.\+t$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G '^N*w\?D\{140\}.\+t$' ../icgrep/combine/icgrep-test/files/file30 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\S*\u0538+(\s|\w)\p{Latin}.[^abc]$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg33 ../icgrep/combine/icgrep-test/files/file33 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "d\?t*u\{41\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G 'd\?t*u\{41\}' ../icgrep/combine/icgrep-test/files/file35 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^Dr\{40,\}p\{169\}d\?\S\+.\snotWordL" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -e '^Dr\{40,\}p\{169\}d\?\S\+.\snotWordL' ../icgrep/combine/icgrep-test/files/file36 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N\{56,189\}\(.\?\)p\{158,\}notWord\{0,103\}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg38 ../icgrep/combine/icgrep-test/files/file38 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S{32,}[a-zA-Z0-9]{145}\w{37,164}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -f ../icgrep/combine/icgrep-test/regs/reg39 ../icgrep/combine/icgrep-test/files/file39 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[a-zA-Z0-9]?\W{37,164}\N{Gurmukhi}{145}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -e '[a-zA-Z0-9]?\W{37,164}\N{Gurmukhi}{145}'  ../icgrep/combine/icgrep-test/files/file41 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[a-zA-Z0-9]\u1C70?\W{135,}\S*.([^abc]+)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg42 ../icgrep/combine/icgrep-test/files/file42 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\s\{8,27\}N\+d\{36\}\(w*\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg43 ../icgrep/combine/icgrep-test/files/file43 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\W?(\w*)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '\W?(\w*)\1'  ../icgrep/combine/icgrep-test/files/file45 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "p\?N*\(w\|\S\)\(d\{97,\}\)t\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg46 ../icgrep/combine/icgrep-test/files/file46 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.[ا-ي]\N{Oriya}\W*\t{0,53}\w+\d[abc][^XYZ]{109,127}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -e '^.[ا-ي]\N{Oriya}\W*\t{0,53}\w+\d[abc][^XYZ]{109,127}'  ../icgrep/combine/icgrep-test/files/file48 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^[123]+\W{31}\d\u0A13{0,11}(\p{Common}|\S)" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -e '^[123]+\W{31}\d\u0A13{0,11}(\p{Common}|\S)'  ../icgrep/combine/icgrep-test/files/file50 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "l\(notWord\)\s\{99,138\}ur*L\{158,\}\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G 'l\(notWord\)\s\{99,138\}ur*L\{158,\}\1$' ../icgrep/combine/icgrep-test/files/file51 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S?\D{148}(\s*)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg52 ../icgrep/combine/icgrep-test/files/file52 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N\S*\s\{139\}u\(d\)notWordr\+\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg53 ../icgrep/combine/icgrep-test/files/file53 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\t\w{27,95}\u112E{62,}\S?.{0,136}(\W)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg55 ../icgrep/combine/icgrep-test/files/file55 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "notWord\+r*\S\(p\|u\).\?D\{82,187\}$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg57 ../icgrep/combine/icgrep-test/files/file57 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "([ا-ي]{180})\t*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '([ا-ي]{180})\t*\1'  ../icgrep/combine/icgrep-test/files/file58 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(\s*\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg59 ../icgrep/combine/icgrep-test/files/file59 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\w{75,}\s{0,109}\W{68}(\D)\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '^\w{75,}\s{0,109}\W{68}(\D)\1$'  ../icgrep/combine/icgrep-test/files/file61 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(L\|l\)t\+w\{75,179\}l\?u\{0,109\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -e '\(L\|l\)t\+w\{75,179\}l\?u\{0,109\}' ../icgrep/combine/icgrep-test/files/file62 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.\{149,\}u\{51,150\}\(r\+\)\SN\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg64 ../icgrep/combine/icgrep-test/files/file64 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "p\+uL\{183,\}\(notWord*\)w\{149\}d\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -e 'p\+uL\{183,\}\(notWord*\)w\{149\}d\1$' ../icgrep/combine/icgrep-test/files/file67 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "w\+\(r\?\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G 'w\+\(r\?\)\1' ../icgrep/combine/icgrep-test/files/file68 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo ".{92,148}(\d|\d)\s?" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '.{92,148}(\d|\d)\s?'  ../icgrep/combine/icgrep-test/files/file69 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[হ্যালো]\w\u1B9E{0,143}(\W|\S)\N{Oriya}\p{Armenian}[a-zA-Z0-9]" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg70 ../icgrep/combine/icgrep-test/files/file70 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S*\t+\W{29,36}\D{128,}\d{190}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg72 ../icgrep/combine/icgrep-test/files/file72 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(N\{128,135\}\)\s\{37\}p\?notWord*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg73 ../icgrep/combine/icgrep-test/files/file73 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\N{Oriya}+\p{Thaana}*\S?\u06B2{0,50}[A-Za-z]{50,}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '\N{Oriya}+\p{Thaana}*\S?\u06B2{0,50}[A-Za-z]{50,}'  ../icgrep/combine/icgrep-test/files/file75 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S{22,}\s+([^XYZ]{125,157})([XYZ]|[ا-ي])\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '\S{22,}\s+([^XYZ]{125,157})([XYZ]|[ا-ي])\1'  ../icgrep/combine/icgrep-test/files/file76 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "notWord\?\(l*\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg78 ../icgrep/combine/icgrep-test/files/file78 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N\{10,\}\s\{5,68\}p\+D\?\(.\{0,48\}\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg79 ../icgrep/combine/icgrep-test/files/file79 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^([XYZ])\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -e '^([XYZ])\1'  ../icgrep/combine/icgrep-test/files/file80 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\N{Kannada}*(\w{89})\W?(\t|\W).+\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg82 ../icgrep/combine/icgrep-test/files/file82 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\S\{156,\}l\?r\{0,9\}notWord.\{99\}d$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg83 ../icgrep/combine/icgrep-test/files/file83 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "w\sul\{8,\}t*notWord\{44,46\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -e 'w\sul\{8,\}t*notWord\{44,46\}' ../icgrep/combine/icgrep-test/files/file85 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\S\s.L\{46,111\}Nlr\{46\}uD\{0,187\}$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg86 ../icgrep/combine/icgrep-test/files/file86 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\u1BE1*\w{133,160}(.{178,})\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E '\u1BE1*\w{133,160}(.{178,})\1'  ../icgrep/combine/icgrep-test/files/file88 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "l\{0,195\}\s\{55\}D.\+r*\(notWord\{76,127\}\)tp\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg90 ../icgrep/combine/icgrep-test/files/file90 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\w+).{74}\u1BC6{152,}\W?\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg92 ../icgrep/combine/icgrep-test/files/file92 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[^abc]*[123]{0,73}\s{19,}\S{67,179}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '[^abc]*[123]{0,73}\s{19,}\S{67,179}'  ../icgrep/combine/icgrep-test/files/file93 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\D*(\s{182})\t+\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -e '\D*(\s{182})\t+\1'  ../icgrep/combine/icgrep-test/files/file95 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "d\{31,\}\(w\|p\)\(u\{47\}\)r\{0,67\}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg96 ../icgrep/combine/icgrep-test/files/file96 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo ".\{150,\}D\+Ldl\(t\{0,108\}\)\S\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G '.\{150,\}D\+Ldl\(t\{0,108\}\)\S\1$' ../icgrep/combine/icgrep-test/files/file97 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\p{Cyrillic}[^হ্যালো]*\W\D{100,}\t?\s" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg98 ../icgrep/combine/icgrep-test/files/file98 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg99 ../icgrep/combine/icgrep-test/files/file99 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[123]{168}((\D|[a-zA-Z0-9]))[^XYZ]{94,145}\w+\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg101 ../icgrep/combine/icgrep-test/files/file101 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S\{0,46\}D\+" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G '\S\{0,46\}D\+' ../icgrep/combine/icgrep-test/files/file102 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.\{177\}L\?N\{0,37\}\(D\|u\)notWordt\s\+" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg104 ../icgrep/combine/icgrep-test/files/file104 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "d\{69,\}\S\{59,144\}u*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg106 ../icgrep/combine/icgrep-test/files/file106 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^[^হ্যালো]\D\p{Gurmukhi}\N{Armenian}\w[XYZ]?." >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg107 ../icgrep/combine/icgrep-test/files/file107 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\W?(\w|[A-Za-z]).{66,}[XYZ]*\p{Oriya}{194}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '\W?(\w|[A-Za-z]).{66,}[XYZ]*\p{Oriya}{194}'  ../icgrep/combine/icgrep-test/files/file108 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\s\{136,\}u*rt\{157,185\}D\(notWord\+\)\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -e '^\s\{136,\}u*rt\{157,185\}D\(notWord\+\)\1$' ../icgrep/combine/icgrep-test/files/file111 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(u\?\)p\+l*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -e '\(u\?\)p\+l*\1' ../icgrep/combine/icgrep-test/files/file112 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(r\{186\}\).*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg113 ../icgrep/combine/icgrep-test/files/file113 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\d|[^abc])[A-Za-z]{79,139}\S{11,}\s\t\W\D\p{Gurmukhi}$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E '(\d|[^abc])[A-Za-z]{79,139}\S{11,}\s\t\W\D\p{Gurmukhi}$'  ../icgrep/combine/icgrep-test/files/file114 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\u0754{27,}\w{0,100}\t+\p{Telugu}?\d*[^XYZ]{77}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg116 ../icgrep/combine/icgrep-test/files/file116 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[^abc]*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '[^abc]*'  ../icgrep/combine/icgrep-test/files/file117 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^uwlLnotWord*$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G '^uwlLnotWord*$' ../icgrep/combine/icgrep-test/files/file120 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\s\+\(L\|N\)notWordD" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg121 ../icgrep/combine/icgrep-test/files/file121 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "r\{124,\}l\+t\{27\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg123 ../icgrep/combine/icgrep-test/files/file123 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\p{Telugu}.([হ্যালো])\d{158,}\t[0-9]*\W\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -e '^\p{Telugu}.([হ্যালো])\d{158,}\t[0-9]*\W\1'  ../icgrep/combine/icgrep-test/files/file124 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\p{Greek}{14})\s+\u1A57{3,}[^হ্যালো]{73,74}\D?[A-Za-z]{0,155}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -f ../icgrep/combine/icgrep-test/regs/reg126 ../icgrep/combine/icgrep-test/files/file126 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\D{171}([abc]|\p{Armenian})[^abc]{0,24}\u0975\N{Thaana}*\W{0,160}\S+" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '\D{171}([abc]|\p{Armenian})[^abc]{0,24}\u0975\N{Thaana}*\W{0,160}\S+'  ../icgrep/combine/icgrep-test/files/file127 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(u\)L\S\{11,\}lt\s\{126\}p\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -e '\(u\)L\S\{11,\}lt\s\{126\}p\1$' ../icgrep/combine/icgrep-test/files/file128 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[^abc]{9,}\S{6,84}[A-Za-z]?\D*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -e '[^abc]{9,}\S{6,84}[A-Za-z]?\D*'  ../icgrep/combine/icgrep-test/files/file129 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^(\u06BE)\d{68,131}\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg130 ../icgrep/combine/icgrep-test/files/file130 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(w\+\)t*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg131 ../icgrep/combine/icgrep-test/files/file131 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

