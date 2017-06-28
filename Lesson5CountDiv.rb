def solution(a, b, k)
  #https://codility.com/programmers/lessons/5-prefix_sums/count_div/
  # write your code in Ruby 2.2
    if (a==0) && (b==0)
    return 1
  elsif k==1
    return (a..b).size
  elsif (a%k==0) && (b%k==0)
    return ((a..b).size / k)+1
  elsif (b-a)==k
    return 1
  elsif k.odd?
    return ((a..b).size / k.to_f).round
  else
    return ((a..b).size / k.to_f).floor
  end
end
