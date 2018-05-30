x = ScreenEA()
x = x &~3
while x < 0x8200000:
    x += 4
    if Byte(x+1) == 0xb5 and (Byte(x) & 0x0f) == 0:
        Jump(x)
        MakeCode(x)
        MakeFunction(x)
    