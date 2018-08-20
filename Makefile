#/usr/bin/sh
# Build pyArabic package

default: all
# Clean build files
clean:
	
backup: 
	
#create all files 
all: 

install:
	sudo cp shellshal/*.sh /usr/local/bin

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
