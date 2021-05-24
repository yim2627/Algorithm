r, g, b  = map(int, input().split())
for i in range(r):
    for j in range(g):
        for k in range(b):
            print('{} {} {}'.format(i,j,k))
print(r*g*b)