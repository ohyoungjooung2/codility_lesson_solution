##!/usr/bin/env ruby
def solution(n)
 r_b=n.to_s(2)
 #puts r_b

 if r_b.include?("0")
    #puts "zeros includes"
    if r_b[-1]=="0"
       rs=r_b.split("1")
       rs.pop
       #puts "rs is #{rs}"
       #rs.max.length
       return rs.max.length
    else
       rs=r_b.split("1")
       #puts rs.max.length
       return rs.max.length
    end
 else
    #puts "no zero"
    return 0
 end
end

#solution(529)
#puts "----"
#solution(20)
#puts "-----"
#solution(15)
