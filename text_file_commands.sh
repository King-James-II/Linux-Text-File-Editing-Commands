#!/bin/bash

# Exercise 1 - Viewing File Contents

# 1.1 Viewing file content with the cat command
cat entrypoint.sh

# 1.2 Viewing file content with the more command
more entrypoint.sh

# 1.3 Scrolling through file content with the less command
less entrypoint.sh

# Exercise 2 - Viewing Text File Contents

# Download the usdoi.txt file
cd /home/project
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt

# 2.1 Display the first N lines of a file with head
head usdoi.txt
head -3 usdoi.txt

# 2.2 Display the last N lines of a file with tail
tail usdoi.txt
tail -2 usdoi.txt

# Exercise 3 - Getting Basic Text File Stats

# 3.1 Count lines, words, or characters from a text file with wc
wc usdoi.txt
wc -l usdoi.txt
wc -w usdoi.txt
wc -c usdoi.txt

# Exercise 4 - Basic Text Wrangling: Sorting Lines and Dropping Duplicates

# Download the zoo.txt file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/module%201/zoo.txt

# 4.1 Sort and display lines of a file alphanumerically with sort
sort usdoi.txt
sort -r usdoi.txt

# View the raw contents of zoo.txt with cat
cat zoo.txt

# 4.2 Drop consecutive duplicated lines and display result with uniq
uniq zoo.txt

# Exercise 5 - Basic Text Wrangling: Extracting Lines and Fields

# 5.1 Extract lines matching a specified criterion with grep
# Print all lines in usdoi.txt containing the word "people"
grep people usdoi.txt

# Print lines in /etc/passwd that do not contain the pattern "login"
grep -v login /etc/passwd

# Options for grep:
# -n: Print line numbers with matching lines
# -c: Get the count of matching lines
# -i: Ignore case while matching
# -v: Print lines which do not contain the pattern
# -w: Match only whole words

# 5.2 Extract fields from lines of text with cut
# View only the first two characters of each line in zoo.txt
cut -c -2 zoo.txt

# View each line in zoo.txt starting from the second character
cut -c 2- zoo.txt

# Download and view the names_and_numbers.csv file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/v4_new_content/labs/names_and_numbers.csv
cat names_and_numbers.csv

# Extract the phone numbers (second field) from names_and_numbers.csv
cut -d "," -f2 names_and_numbers.csv

# Exercise 6 - Basic Text Wrangling: Merging Lines as Fields

# Download the zoo_ages.txt file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/module%201/zoo_ages.txt

# Merge zoo.txt and zoo_ages.txt line-by-line, aligned as columns with paste
paste zoo.txt zoo_ages.txt

# Change the delimiter to comma instead of Tab
paste -d "," zoo.txt zoo_ages.txt