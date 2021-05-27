d = [[]*19 for _ in range(19)]

for i in range(19): # 0~18
    d[i] = list(map(int, input().split()))

n = int(input())

for i in range(n):
    x, y = map(int,input().split()) # 좌표 입력
    for j in range(19):
        if d[x-1][j] == 1: #배열 중심으로 생각하면 -1 해줘야함
            d[x-1][j] = 0
        else:
            d[x-1][j] = 1
        
        if d[j][y-1] == 1:
            d[j][y-1] = 0
        else:
            d[j][y-1] = 1

# for i in range(20):
#     for j in range(20):
#         print(d[i][j])
for i in range(19):
    for j in range(19):
        print(d[i][j],end=' ')
    print()