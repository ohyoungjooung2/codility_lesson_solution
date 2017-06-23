#https://codility.com/programmers/lessons/6-sorting/max_product_of_three/
def solution(a)
  # write your code in Ruby 2.2
  n=[]
  if a.count < 10
    #This is not actullay not necessary, actually though.
    a.permutation(3).to_a.each { |e| n<<e.inject(:*)}
  else
    a=a.sort
    af=a[0]*a[1]*a[-1]
    as=a[-3]*a[-2]*a[-1]
    n<<af
    n<<as
  end
  
  n.max
end
