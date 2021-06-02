words = input().upper()
uniq_words = list(set(words))

cnt = []

for i in uniq_words:
    if i in words:
        cnt.append(words.count(i))
# print(cnt)

if cnt.count(max(cnt)) > 1:
    print("?")
else:
    print(uniq_words[cnt.index(max(cnt))])