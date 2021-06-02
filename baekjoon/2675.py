import sys
from typing import Text

input = sys.stdin.readline

n = int(input())

for i in range(n):
    repeat, s = input().split()
    text = ""
    for j in s:
        text += int(repeat)*j
    print(text)