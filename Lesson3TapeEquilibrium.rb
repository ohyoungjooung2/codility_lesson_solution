#https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
#Ruby; correctness=100%,performance=100%
def sol(a)
   size=a.size-2
   lsum=0
   rsum=a.inject :+
   ra=[]
   for i in (0..size)
    lsum+=a[i]
    rsum-=a[i]
    ra<<(rsum-lsum).abs
   end
   #return result no need to use "return"
   ra.min
end
