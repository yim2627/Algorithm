import sys

input = sys.stdin.readline

n_list = [(int(input())%42) for _ in range(10)]

n_set = set(n_list)

print(len(n_set))