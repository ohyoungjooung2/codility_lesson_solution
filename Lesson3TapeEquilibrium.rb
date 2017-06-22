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


#Nasty solution, correctness 100%, performance 0%^^;
#def solution(a)
#     z=[]
#     a.each { |e| z << e }
#    
#    #Remove last element of array a
#    a.pop
#    size=a.size
#    
#    #Second element (sum) start
#    z.shift
#    z=z.reverse
#    #p z
#    
#    second_a=[]
#    second_sum=0
#    for i in (0..size-1)
#      z.each { |z| second_sum+=z }
#      second_a<<second_sum
#      second_sum=0
#      z.pop
#    end
#    
#    
#    
#    
#    first_a=[]
#    sum=0
#    a.each { |e| sum+=e; first_a << sum }
#    
#    
#    final_result_a=[]
#    for i in (0..size-1)
#       final_result_a << (first_a[i] - second_a[i]).abs
#    end
#    final_result_a.min
#end
