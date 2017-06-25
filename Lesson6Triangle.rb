#https://codility.com/programmers/lessons/6-sorting/
def solution(a)
  # write your code in Ruby 2.2
  a=a.sort
  n=[]
  for i in (0..a.size-3)
    
    first=a[i]
     second=a[i+1]
     third=a[i+2]
     n<<[first,second,third]
   end
   
   n.each.select { |e| if ((e[0]+e[1] > e[2]) && (e[0]+e[2] > e[1]) && (e[1]+e[2] > e[0])); return 1; end; }
   0

end
