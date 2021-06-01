import sys

natural_n = set(range(1,101))
generate_n = set()

for i in range(1,101):
    for j in str(i):
        i += int(j)
    generate_n.add(i)
self_num = sorted(natural_n - generate_n)
for i in self_num:
    print(i)