d = []
for i in range(10):
    d.append(list(map(int, input().split())))

x, y = 1, 1

while True:
    if d[x][y] == 2:
        d[x][y] = 9
        break

    if d[x][y+1] != 1:
        d[x][y] = 9
        y += 1
    else:
        if d[x+1][y] != 1:
            d[x][y] = 9
            x += 1
        else:
            d[x][y] = 9
            break          

print()

for i in range(10):
    for j in range(10):
        print(d[i][j],end=' ')
    print()