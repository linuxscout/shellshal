#/usr/bin/sh
# Build pyArabic package

default: all
# Clean build files
clean:
	
backup: 
	
#create all files 
all: 

create new template:
	template/template.sh
install:
	sudo cp shellshal/*.sh /usr/local/bin
	sudo cp shellshal/shellshal /usr/local/bin
	sudo chmod uo=rx /usr/local/bin/makelist.sh
	sudo chmod uo=rx /usr/local/bin/replace_wasla.sh
	sudo chmod uo=rx /usr/local/bin/shellshal
	sudo chmod uo=rx /usr/local/bin/strip_harakat.sh
	sudo chmod uo=rx /usr/local/bin/strip_lastmark.sh
	sudo chmod uo=rx /usr/local/bin/strip_tashkeel.sh
	sudo chmod uo=rx /usr/local/bin/tokenize.sh
	sudo chmod uo=rx /usr/local/bin/tokenize_uniq.sh



publish:
	git push origin master 

doc:
	echo " See README.md"
test:
	echo "Tests"
	echo "1- strip tashkeel (diacritic) from words from text"
	shellshal/strip_tashkeel.sh tests/samples/testfile.txt
	echo " Remove last Haraka (diacritic) from the end of words from text"
	shellshal/strip_lastmark.sh tests/samples/testfile.txt
	echo " Tokenize words from text"
	shellshal/tokenize.sh tests/samples/testfile.txt
	echo " Tokenize words from text and return only sorted uniq words with frequency"
	shellshal/tokenize_uniq.sh tests/samples/testfile.txt
	echo "Makelist Convert file into list; csv file or one word per line"
	shellshal/makelist.sh tests/samples/testfile.csv 
