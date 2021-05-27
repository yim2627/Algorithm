n = int(input())
m = input().split()

for i in range(n):
    m[i] = int(m[i])

for i in range(n-1,-1,-1):
    print(m[i],end=' ')


