def solution(A, B, K):
    #For math.floor,import math
    import math
    if (A==0) and (B==0):
        return 1
    elif K==1:
        return (B-A+1)
        #2,200000000000,2
    elif (A%K==0) and (B%K==0):
        return int((B-A)/K) + 1
        #2,10000,9998
    elif (B-A+1)==K:
        return 1
        #when K is even
    elif K % 2 == 0:
        return int(math.floor((B-A+1)/K))
        #When K is odd
    else:
        return int(round((B-A+1)/K))
