def solution(a, b, k)
  # write your code in Ruby 2.2
  if (a==0) && (b==0)
    return 1
  elsif k==1
    return (a..b).size
    #2,200000000000,2
  elsif (a%k==0) && (b%k==0)
    return ((a..b).size / k)+1
    #2,10000,9998
  elsif (b-a)==k
    return 1
  elsif k.odd?
    return ((a..b).size / k.to_f).round
  else
    return ((a..b).size / k.to_f).floor
  end
end
