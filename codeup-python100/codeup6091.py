n1, n2, n3 = map(int, input().split())
d = 2
while d%n1!=0 or d%n2!=0 or d%n3!=0:
    d += 1
print(d)

