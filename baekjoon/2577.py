import sys

input = sys.stdin.readline

n1 = int(input())
n2 = int(input())
n3 = int(input())

r = list(str(n1*n2*n3))

for i in range(10):
    print(r.count(str(i)))