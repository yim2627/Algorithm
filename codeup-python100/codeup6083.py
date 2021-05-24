r, g, b  = map(int, input().split()) #map() 여러 개의 데이터를 한 번에 다른 형태로 변환
for i in range(r):
    for j in range(g):
        for k in range(b):
            print('{} {} {}'.format(i,j,k))
print(r*g*b)