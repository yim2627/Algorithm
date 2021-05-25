h, b, c, s = map(int, input().split())
bit = h * b * c * s #bit
mbyte = float(bit / 8 / 1024 / 1024) #MB
print(format(mbyte,".1f"),"MB")
