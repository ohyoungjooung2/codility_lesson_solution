def solution(A,K):
    if A == []:
       return A

    for i in range(K):
        A.insert(0,A[-1])
        A.pop()
    return A
