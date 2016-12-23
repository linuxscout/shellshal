# shellshal
Shell Script for Arabic Language processing
سكريبتات سطر الأوامر للتعامل مع النصوص العربية

#Description
This project is a collection of small shell scripts used to process arabic texts, like:

- Tokeninze a file text into tokens
- Strip Tashkeel from text
- Strip only the last mark from every word in text.


#التسمية
شَلْشَلَ
    [ ش ل ش ل ]. ( فعل : رباعي لازم متعد ). :- شَلْشَلْتُ ، أُشَلْشِلُ ، شَلْشِلْ ، مصدر شَلْشَلَةٌ .
    1 . :- شَلْشَلَ الْمَاءَ :- : صَبَّهُ مُتَتَابِعاً .
    2 . :- شَلْشَلَ الْمَاءُ :- : قَطَرَ وَسَالَ مُتَتَابِعاً .
    3 . :- شَلْشَلَ السَّيْفُ الدَّمَ :- : صَبَّهُ .
    
الاسم مأخوذ من شبهه بكلمة shell التي تعني سطر الأوامر، 

والمعنى في الشلشلة هي التتابع

##SCRIPTS

### Tokenize
1- You can tokenize a text file by the following script
```
tokenize.sh filename
```
2- Tokenize, sort, removre duplicates and count frequencies for words in file.
```
tokenize_uniq.sh filename
```
### Tashkeel
1- Remove Harakat (diacritics) and Tatweel from text
```
strip_tashkeel.sh filename
```
2- Remove last Haraka (diacritic) from the end of words from text
```
strip_lastmark.sh filename
```
