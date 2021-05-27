n = int(input()) # 출석부른 횟수
m = input().split()
d = []

for i in range(24):
    d.append(0)

for i in range(n):
    m[i] = int(m[i])
    d[m[i]] += 1

for j in range(1,24):
    print(d[j],end=' ') 


