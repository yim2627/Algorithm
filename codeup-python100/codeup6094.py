n = int(input())
m = list(map(int, input().split()))
min = m[n-1]

for i in range(n):
    if m[i] < min:
        min = m[i]
print(min)