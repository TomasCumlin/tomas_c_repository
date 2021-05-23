# The file is run by this command: python gene_expression.py <file name>

import sys

# Obtaining the file name. 
files = open(sys.argv[1], "r")

# Read in the file and split where new line begins
files = files.read().split('\n')

# Remove the last rows as they will disrupt the loop. 
files = files[:-5]


# creating a list that also splits the string at the blanc space.
list1 = []
for i in files:
    list1.append(i.split())

# Counters
expressed = 0
not_expressed = 0

for i in list1:
    if i[1] == "0":
        not_expressed += 1
    else:
        expressed += 1

ratio = (expressed/(expressed + not_expressed))*100

print(f"There are {expressed} expressed genes and {not_expressed} genes that are not expressed.")

print(f" Out of all genes, {round(ratio)} % are expressed while {100-round(ratio)} % are not expres$
