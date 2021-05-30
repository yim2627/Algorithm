H, M = map(int, input().split())
t = (H * 60) + M
if M < 45:
    if H == 0:
        H = 23
        M = 60 + (M - 45)
        print(H, M)
    else:
        H = H - 1
        M = 60 + (M - 45)
        print(H, M)
else:
    M = M - 45
    print(H, M)
