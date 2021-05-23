
import sys

file1 = open(sys.argv[1], "r")


file1 = file1.read().split('\n')


file1 = file1[:-5]

count1 = []
for i in file1:
    count1.append(i.split())

count2 = []
for i in count1:
        if i[1] != "0":
                count2.append(i)

for i in count2:
        i[0] = "ID=" + i[0]


file2 = open(sys.argv[2], "r")

file2 = file2.read().split('\n')

name = []

for line in file2:
        name.append(line.split())

name2 = []
for i in name:
        if '+' in i:
                name2.append(i)

name3 = []
for i in name2:
        name3.append((i[8]).split(";"))

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


#for i,j in zip(name4,count3):
#       if i[0] == j[0]:
#               j[0] = i[-2]

for i,j in zip(name4,count3):
        if i[0] == j[0]:
                j[0] = i[-2]
                j[1] = int(j[1])


count3 = sorted(count3, key = lambda x: int(x[1]))


maximum = 0

for i in count3:
        if 'gene=' in i[0]:
                if i[1] > maximum:
                        maximum = i[1]


for i in count3:
        if 'gene=' in i[0]:
#                i[1] = float(i[1])/float(maximum)
#               i[1] = round(i[1],4)
                i[0] = i[0].replace('gene=','')
                #print(str(i).strip("[").strip("]").strip("'").strip("'").strip(","))
                print(i[0] + ' ' + str(i[1]))
