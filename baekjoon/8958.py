import sys

input = sys.stdin.readline

n = int(input())

for i in range(n):
    ox_list = list(input())
    plus_score = 0
    score = 0
    for j in ox_list:
        if j == 'O':
            plus_score += 1
        else:
            plus_score = 0
        score += plus_score
    print(score)