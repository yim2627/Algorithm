import sys

input = sys.stdin.readline

n, x = map(int, input().split())
a = []

a = list(map(int, input().split()))

for i in range(n):
    if a[i] < x:
        print(a[i], end=' ')