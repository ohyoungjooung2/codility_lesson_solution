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


#Python3
def solution(a):
    a=sorted(a)
    n=[]
    for i in range(len(a)-2):
        first=a[i]
        second=a[i+1]
        third=a[i+2]
        n.append([first,second,third])
    #print(n)
    #print(n[0])
    for i in range(len(n)):
        #print(n[i][0],n[i][1],n[i][2])
        if (n[i][0]+n[i][1] > n[i][2]) and (n[i][1]+n[i][2]>n[i][0]) and (n[i][0]+n[i][2]>n[i][1]):
            return 1
       
    return 0
