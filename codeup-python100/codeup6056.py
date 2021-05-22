n1, n2 = input().split()
# print(bool(int(n1)) != bool(int(n2)))
print((bool(int(n1))and not(bool(int(n2)))) or (not(bool(int(n1)))and bool(int(n2))))