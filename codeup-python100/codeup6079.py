n = 0
sum = 0
var = int(input())
while True:
    if sum < var: 
        n += 1
        sum += n
    else:
        print(n)
        break
