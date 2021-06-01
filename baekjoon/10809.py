# word = list(map(str, input()))
# alpha = list('abcdefghijklmnopqrstuvwxyz')
# alpha_list = [-1 for i in range(len(alpha))]

# for i in range(len(word)):
#     if alpha_list[alpha.index(word[i])] == -1:
#         alpha_list[alpha.index(word[i])] = i

# for i in alpha_list:
#     print(i, end= ' ')
word = input()
alpha = 'abcdefghijklmnopqrstuvwxyz'

for i in alpha:
    if i in word:
        print(word.index(i), end=' ')
    else:
        print(-1, end=' ')