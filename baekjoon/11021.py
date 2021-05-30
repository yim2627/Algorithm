import sys
input = sys.stdin.readline

t = int(input())

for i in range(1, t+1):
    A, B = map(int, input().split())
    print(f'Case #{i}: {A + B}')