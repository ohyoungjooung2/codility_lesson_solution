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


#Python3(100% correct but slow performance = 50%
def solution(a):
    b=[]
    c=[]
    d=[]
    for i in range(len(a)):
        lm=(sum(a[0:i+1]))
        cm=(sum(a[i+1:]))
        b.append(lm)
        c.append(cm)
    b.pop()
    c.pop()
    #print(b)
    #print(c)
    
    
    for j in range(len(b)):
        r=abs(b[j]-c[j])
        d.append(r)
    final_result = min(d)
    return final_result

#Another slow performance but 100% correctness
def solution(a):
    d=[]
   
    for i in range(len(a)):
        
        lm=(sum(a[0:i+1]))
        cm=(sum(a[i+1:]))
        tmpv=lm-cm
        tmpv=abs(tmpv)
        d.append(tmpv)
    d.pop()
    return(min(d))

       
       
#Nasty solution, correctness 100%, performance 0%-ruby version
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
