n1, n2, n3 = input().split()
n1 = int(n1)
n2 = int(n2)
n3 = int(n3)

nValue1 = n1 if n1 < n2 else n2
nValue2 = nValue1 if nValue1 < n3 else n3
print(nValue2)