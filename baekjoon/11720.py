# n = input()
# print(sum(map(int, input())))
#--------------------------------
n = int(input())
nums = input() # str
sum = 0

for i in nums:
    sum += int(i)
print(sum)
