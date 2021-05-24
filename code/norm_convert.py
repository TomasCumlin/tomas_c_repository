import sys


# open read counts from htseq
file1 = open(sys.argv[1], "r")


file1 = file1.read().split('\n')

words = ['__ambiguous', '__too_low_aQual', '__no_feature', '__not_aligned']


# create a list
count1 = []
for i in file1:
    count1.append(i.split())


# only keep those that are succesful counts
count2 = []
for i in count1[:-1]:
        if i[-1] != "0" and i[0] not in words:
                count2.append(i)

#sum of all numbers
sum_list = []

for i in count2:
        sum_list.append(float(i[1]))

summa = round(sum(sum_list)/1000000, 10)

for i in count2:
        i[0] = "ID=" + i[0]


file2 = open(sys.argv[2], "r")

file2 = file2.read().split('\n')

name = []

for line in file2:
        name.append(line.split())

#only keep lines with annotated genes
name2 = []
for i in name:
        if '+' in i:
                name2.append(i)

name3 = []
length = []

for i in name2:
        name3.append((i[8]).split(";"))
        length.append(str((int(i[4]))-(int(i[3])))) #getting the length for each gene


for i,j in zip(name3, length):
        i.append(j)


for i in name3:
        i[0] = "" + i[0]

name4 = []
for i in name3:
        if any(i[0] in s for s in count2):
               name4.append(i)


count3 = []
for i in count2:
        if any(i[0] in s for s in name4):
               count3.append(i)


name4 = sorted(name4)

count3 = sorted(count3)



for i,j in zip(name4,count3):
       if i[0] == j[0]:
                j[0] = i[-3]
                j[1] = int(j[1])
                j.append(int(i[-1]))
                j.append(float(j[1]/summa))
                j[-1] = j[-1]/j[-2]
                print(j)


# Normalisation

count3 = sorted(count3, key = lambda x: (x[-1]))


maximum = 0

for i in count3:
        if 'gene=' in i[0]:
                if i[-1] > maximum:
                        maximum = i[-1]


for i in count3:
        if 'gene=' in i[0]:
                i[0] = i[0].replace('gene=','')
 #               print(str(i).strip("[").strip("]").strip("'").strip("'").strip(","))
                print(i[0] + ' ' + str(i[1])  + ' ' + str(i[-1]))

