import sys

input = sys.stdin.readline

n = int(input())
score = list(map(int, input().split()))
max_score = max(score)

for i in range(n):
    score[i] = score[i]/max_score*100
score_avg = sum(score)/n

print(score_avg)