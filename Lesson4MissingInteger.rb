
#https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
def solution(a)
  # write your code in Ruby 2.2
  h=Hash.new(0)
 for i in (1..a.size+1)
    h[i]="True"
 end
 (h.keys-a)[0]

end
