import sys

input = sys.stdin.readline

n_list = [int(input()) for _ in range(9)]

print(max(n_list))
print(n_list.index(max(n_list))+1)