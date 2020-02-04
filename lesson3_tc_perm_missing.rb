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

#Python3
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
