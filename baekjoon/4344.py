import sys

input = sys.stdin.readline

c = int(input())

for i in range(c):
    c_list = list(map(int, input().split()))
    score_avg = sum(c_list)/c_list[0]
    count = 0
    for j in c_list[1:]:
        if score_avg < j:
            count += 1
    rate = count/c_list[0]*100
    print(f'{rate:.3f}%')