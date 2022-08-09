
rows = 6
for row in range(1, rows):
    num = 1
    for j in range(rows, 0, -1):
        if j > row:
            continue
        else:
            print(num, end=' ')
            num += 1
    print("")

space = 1
reset = 1

for i in range(1, 11):
    print(i, end=' ')
    if (space == reset):
        print(" ")
        space = space + 1
        reset = 0
    reset = reset + 1

for i in range(0, 5):
    print(" " * (5 - i), end = "")
    for x in range(i):
        print("+ ", end = "")
    print()
for i in range(5, 0, -1):
    print(" "*(5-i), end='')
    for x in range(i):
        print("+ ", end='')
    print()

list_for_andif = [i for i in range(1,11) if i % 2==0]
print (list_for_andif)

data = [1,4,8,2,5,0]

array_temp = []
for i in data:
    if i % 2==0:
        array_temp.append(i)
    else:
        continue
print (len(array_temp))

#Asc
for i in range(len(data)-1):
    min = i
    for j in range(i+1,len(data)):
        if data[min] > data [j]:
            min = j
    data[i],data[min] = data[min],data[i]
print(data)

#Desc
for i in range(len(data)-1):
    min = i
    for j in range(i+1,len(data)):
        if data[min] < data [j]:
            min = j
    data[i],data[min] = data[min],data[i]
print(data)

array_kali2 = []
for i in data:
    i = i**2
    array_kali2.append(i)
print(array_kali2)

num = 5
for i in range(0,num):
    for j in range (0,num-i-1):
        print(end='')
    for j in range (0,i+1):
        print("*",end="")
    print()

rows = 10
for i in range(rows):
    for j in range(i+1):
        print("* ", end="")
    print()

sisi = 10
count = 1
spasi = int(sisi/2)

for i in range(sisi):
    if (count%2):
        print(" "*spasi, "*"*count)
        count += 1
        spasi -= 1
    else:
        count += 1
        continue
    # if count > sisi:
    #     break
print("=============")
a = 4
b = 1
for i in range(a):
    print("*"*b)
    b += 1
        # spasi -= 1
    # else:
    #     count += 1
    #     continue
    # if count > sisi:
    #     break