https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/start/
#ruby(2.2 or more)
def solution(a)
         length=a.length+1
         sum1=(a.inject :+).to_i
         sum2 = (((length+1)*(length))/2) - sum1
         #puts sum2
         sum2

end
#a=[1,2,3,4,5,6,8]
#a=[1]
#solution(a)

#Python3(Good? model using python set)
def solution(A):
      A.sort()
      #[2,3] or []
      if len(A)==0 or A[0] != 1:
         return 1
      # [1]
      if len(A)==1 and A[0] == 1:
         return (A[0]+1)
     
      A=set(A)
      B=set(range(min(A),max(A)+1))
      r = list(B-A)
      
      if r:
         return r[0]
      else:
               #[1,2] is the B and A.then..
         return max(A)+1
               
               
   
#Python3 slow one and [1,2],[1,2,3] like these.. are not missing case..in which below primitive algorithum is not correct..
def solution(A):
    #[2,3] or []
    if len(A)==0 or A[0] != 1:
        return 1
    # [1]
    if len(A)==1 and A[0] == 1:
        return (A[0]+1)
    # write your code in Python 3.6
    A.sort()
    for i in range(0,len(A)):
        if A[i] == max(A):
            break
        if A[i+1] > A[i]+1:
            r = A[i] + 1
            break
    return r
