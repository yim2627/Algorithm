w, h, b = map(int, input().split())
bit = w * h * b
mbyte = float(bit/8/1024/1024)
print(format(mbyte, ".2f"),"MB")

