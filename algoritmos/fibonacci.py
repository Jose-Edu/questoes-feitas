# Fibonacci

def fiborec(num):

    if num <= 1:
        return num
    
    return fiborec(num-1) + fiborec(num-2)


def fibo(c):

    for x in range(c):
        print(fiborec(x))


fibo(10)