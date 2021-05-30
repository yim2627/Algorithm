from typing import NewType


n = int(input())
check_n = n
cnt = 0

while True:
    temp = (n//10)+(n%10)
    new_n = ((n%10)*10)+(temp%10)
    cnt += 1
    if check_n == new_n:
        break
    n = new_n
print(cnt)