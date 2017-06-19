#!/bin/bash

echo "Starting bash file: ../icgrep/combine/icgrep-test/grep/icgrep-bash.sh"
echo "^\N{Cyrillic}{0,150}(\S|\u1DD5)\d{64}[123]*\p{Armenian}{80,}([^abc]+)[ا-ي]{97,101}\t?\W\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg1 ../icgrep/combine/icgrep-test/files/file1 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G '' ../icgrep/combine/icgrep-test/files/file2 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\s{11,171}\u1F93?\t{0,34}\w[XYZ]\d+$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg4 ../icgrep/combine/icgrep-test/files/file4 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "t\?l\{168,190\}d\{59\}\(\(.\|w\)\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg5 ../icgrep/combine/icgrep-test/files/file5 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\S|.).{17,}\W+(\D{0,167})\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '(\S|.).{17,}\W+(\D{0,167})\1'  ../icgrep/combine/icgrep-test/files/file7 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "u*N\{130,161\}L\{44\}p\{0,51\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg8 ../icgrep/combine/icgrep-test/files/file8 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\u07AB*\S\s{131}\w+$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '^\u07AB*\S\s{131}\w+$'  ../icgrep/combine/icgrep-test/files/file10 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "N\{0,99\}d\+\(t\)\(L\|w\)D\?\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -e 'N\{0,99\}d\+\(t\)\(L\|w\)D\?\1' ../icgrep/combine/icgrep-test/files/file11 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\u04FB\d\s{75,}(\N{Cyrillic}?)\W+\p{Gujarati}{113}\t\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg13 ../icgrep/combine/icgrep-test/files/file13 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\S\{197\}notWord\{0,37\}r\?l\{70,\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G '\S\{197\}notWord\{0,37\}r\?l\{70,\}' ../icgrep/combine/icgrep-test/files/file14 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\d{71,183}[abc]+(\u0E1D|.)[^XYZ]{129}\w*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg16 ../icgrep/combine/icgrep-test/files/file16 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo ".\+p\{34,140\}\(t\|u\)l\{70,\}\s\{0,150\}D\{97\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G '.\+p\{34,140\}\(t\|u\)l\{70,\}\s\{0,150\}D\{97\}' ../icgrep/combine/icgrep-test/files/file17 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\N{Tamil}{54,}\u1B08\d*(\D?)\w{30,179}(\W|[A-Za-z])\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg20 ../icgrep/combine/icgrep-test/files/file20 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\d*.{151}\w{9,}[0-9]{0,62}([^abc]|\t)" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg22 ../icgrep/combine/icgrep-test/files/file22 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\d{92,}\p{Latin}?\S{138,179}[^XYZ]+" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -f ../icgrep/combine/icgrep-test/regs/reg23 ../icgrep/combine/icgrep-test/files/file23 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(L\{0,154\}\)u\?\(\S\|\S\)l*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg24 ../icgrep/combine/icgrep-test/files/file24 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "p\{0,59\}r\{125,\}\S\?u\{104\}d" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -e 'p\{0,59\}r\{125,\}\S\?u\{104\}d' ../icgrep/combine/icgrep-test/files/file25 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\s{0,98})\D+(.|\d)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg26 ../icgrep/combine/icgrep-test/files/file26 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^upd\{75\}\(\S\{42,90\}\)tL\{0,42\}notWord\+\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G '^upd\{75\}\(\S\{42,90\}\)tL\{0,42\}notWord\+\1$' ../icgrep/combine/icgrep-test/files/file27 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "lt\s\{155,\}.\(w\|N\)$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -e 'lt\s\{155,\}.\(w\|N\)$' ../icgrep/combine/icgrep-test/files/file28 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.*w\?N\{187\}t\+D$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G '^.*w\?N\{187\}t\+D$' ../icgrep/combine/icgrep-test/files/file30 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\p{Hebrew}+\u1398*(\w|.)[^123][123]\S$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg33 ../icgrep/combine/icgrep-test/files/file33 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "t\?u*r\{64\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G 't\?u*r\{64\}' ../icgrep/combine/icgrep-test/files/file35 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^d\s\{63,\}r\{111\}p\?D\+.\SnotWordL" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -e '^d\s\{63,\}r\{111\}p\?D\+.\SnotWordL' ../icgrep/combine/icgrep-test/files/file36 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo ".\{79,126\}notWord\?p\{79,\}\(N\{0,138\}\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg38 ../icgrep/combine/icgrep-test/files/file38 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\N{Syriac}{143,}\S{116}\w{153,168}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -f ../icgrep/combine/icgrep-test/regs/reg39 ../icgrep/combine/icgrep-test/files/file39 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\D?\N{Syriac}{153,168}\W{116}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -e '\D?\N{Syriac}{153,168}\W{116}'  ../icgrep/combine/icgrep-test/files/file41 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "[abc]{126,128}\S?\t{200}[^abc]*\D{127,}([0-9]+)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg42 ../icgrep/combine/icgrep-test/files/file42 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "l\{0,168\}N\+\s\{139\}\(w*\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg43 ../icgrep/combine/icgrep-test/files/file43 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\W?)\w*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '(\W?)\w*\1'  ../icgrep/combine/icgrep-test/files/file45 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "w\?\S*\(\(N\|p\)\)t\{120,\}L\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -f ../icgrep/combine/icgrep-test/regs/reg46 ../icgrep/combine/icgrep-test/files/file46 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\W[^abc]\t\w*.{0,61}[হ্যালো]+\N{Telugu}\d[0-9]{121,148}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -e '^\W[^abc]\t\w*.{0,61}[হ্যালো]+\N{Telugu}\d[0-9]{121,148}'  ../icgrep/combine/icgrep-test/files/file48 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^[^হ্যালো]+[XYZ]{45}\p{Gurmukhi}\S{0,5}(\d|\W)" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E -e '^[^হ্যালো]+[XYZ]{45}\p{Gurmukhi}\S{0,5}(\d|\W)'  ../icgrep/combine/icgrep-test/files/file50 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "L\(.\)l\{89,155\}\sN*D\{118,\}\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G 'L\(.\)l\{89,155\}\sN*D\{118,\}\1$' ../icgrep/combine/icgrep-test/files/file51 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "(\s?)\t{191}[XYZ]*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg52 ../icgrep/combine/icgrep-test/files/file52 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\sN*d\{90\}utw\(\S\+\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg53 ../icgrep/combine/icgrep-test/files/file53 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^(\S)\w{131,142}\u053D{159,}.?\t{0,107}\W\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E -f ../icgrep/combine/icgrep-test/regs/reg55 ../icgrep/combine/icgrep-test/files/file55 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "p\+w*notWord\(.\|u\)D\?r\{58,187\}$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg57 ../icgrep/combine/icgrep-test/files/file57 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "([0-9]{174})\N{Gurmukhi}*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '([0-9]{174})\N{Gurmukhi}*\1'  ../icgrep/combine/icgrep-test/files/file58 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(L\?\)\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg59 ../icgrep/combine/icgrep-test/files/file59 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^\W{131,}\D{0,69}\w{75}(\N{Armenian})\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -e '^\W{131,}\D{0,69}\w{75}(\N{Armenian})\1$'  ../icgrep/combine/icgrep-test/files/file61 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(l\|w\)L\+t\{2,75\}w\?u\{0,145\}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -e '\(l\|w\)L\+t\{2,75\}w\?u\{0,145\}' ../icgrep/combine/icgrep-test/files/file62 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.\{70,\}\(d\{74,87\}\)\S\+ur\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg64 ../icgrep/combine/icgrep-test/files/file64 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "d*p\{20,\}notWord\+L\(u\)r\{108\}\1$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -G -e 'd*p\{20,\}notWord\+L\(u\)r\{108\}\1$' ../icgrep/combine/icgrep-test/files/file67 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(r\+\).\?\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G '\(r\+\).\?\1' ../icgrep/combine/icgrep-test/files/file68 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\s{107,171}\d?(\p{Armenian}|.)" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '\s{107,171}\d?(\p{Armenian}|.)'  ../icgrep/combine/icgrep-test/files/file69 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\u12B8[123]\W\D(\S|[A-Za-z])\w\N{Greek}{0,182}" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -E -f ../icgrep/combine/icgrep-test/regs/reg70 ../icgrep/combine/icgrep-test/files/file70 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\W{39,}\D+\t{114}\S{41,195}\d*" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg72 ../icgrep/combine/icgrep-test/files/file72 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "notWord*\(L\{140\}\)p\{95,101\}t\?\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg73 ../icgrep/combine/icgrep-test/files/file73 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\p{Bengali}{0,20}\u1E62{25,}.+\N{Greek}*\t?" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -i -E '\p{Bengali}{0,20}\u1E62{25,}.+\N{Greek}*\t?'  ../icgrep/combine/icgrep-test/files/file75 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "((\W|\N{Bengali}))\S+[XYZ]{109,119}[^হ্যালো]{127,}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -E '((\W|\N{Bengali}))\S+[XYZ]{109,119}[^হ্যালো]{127,}\1'  ../icgrep/combine/icgrep-test/files/file76 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\(r\?\)l*\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -G -f ../icgrep/combine/icgrep-test/regs/reg78 ../icgrep/combine/icgrep-test/files/file78 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo ".\{170,\}p\{156,171\}\s\+\(D\?\)l\{0,179\}\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -G -f ../icgrep/combine/icgrep-test/regs/reg79 ../icgrep/combine/icgrep-test/files/file79 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^([abc])\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -e '^([abc])\1'  ../icgrep/combine/icgrep-test/files/file80 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "\W*\s{13}[123]?((\t|\s)).+\1" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -E -f ../icgrep/combine/icgrep-test/regs/reg82 ../icgrep/combine/icgrep-test/files/file82 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

echo "^.\{59,\}N\?l\{0,169\}notWordr\{153\}d$" >> ../icgrep/combine/icgrep-test/grep/icgrep-result
./icgrep -c -i -G -f ../icgrep/combine/icgrep-test/regs/reg83 ../icgrep/combine/icgrep-test/files/file83 >> ../icgrep/combine/icgrep-test/grep/icgrep-result

