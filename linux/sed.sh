#!/bin/bash

touch $HOME/test-file1
echo 'some test text in file' >> $HOME/test-file1

# sed 's/test/super/g' $HOME/test-file1 > $HOME/test-file1 - there will be empty file
# sed 's/test/super/g' $HOME/test-file1 >> $HOME/test-file1 - there will be file with two string (old and new)

# s/ = substitute
# command(s)/template/replacement/flags
# flags: /g - global ; /i - ignore case ; /p - outputs only replaced strings ;

sed 's/test/super/g' $HOME/test-file1 > $HOME/test-file2 # there will be file with replaced string; > or >> doesn't matter with new file
#sed 's/e/E/g' $HOME/test-file1 > $HOME/test-file3 # replaces all e to E
#sed 's/e/E/' $HOME/test-file1 > $HOME/test-file3 # replaces first e to E
#sed '/e/d' $HOME/test-file1 > $HOME/test-file3 # removes all STRINGS that contains 'e' (will be empty file with that example)

# sed -i --> in-place ; output will be in input
#sed -i 's/e/E/g' $HOME/test-file1

cat $HOME/test-file1 # some super text in file