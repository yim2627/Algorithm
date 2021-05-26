h, w = map(int, input().split())
a = []
for i in range(h):
    a.append([])
    for j in range(w):
        a[i].append(0)

n = int(input())

for i in range(n):
    l, d, x, y = map(int, input().split())
    if d == 0:
        for j in range(l):
            a[x-1][y-1+j] = 1
    elif d == 1:
        for j in range(l):
            a[x-1+j][y-1] = 1
    else: break

for i in range (h):
    for j in range(w):
        print(a[i][j], end=' ')
    print()