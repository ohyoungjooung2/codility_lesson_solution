def solution(a)
  #https://codility.com/programmers/lessons/5-prefix_sums/passing_cars/
  # write your code in Ruby 2.2
  #Find 0's index num
  zero_index=[]
  a.each_index { |i| if a[i]==0; zero_index << i; end }
  #p zero_index
  #From zero index's next until last; sum ones
  #Let's sum

  sum=0
  zero_index.each_with_index { |j,i| sum+=(a.size-1-j)-(zero_index.size-(i+1)) }
   
   if (sum > 1000000000)
     return -1
   else
     sum
   end
end

