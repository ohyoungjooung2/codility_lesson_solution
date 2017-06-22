def solution(x, y, d)
  #Correctness=100%; Performance=100%
  # x==y then no need to calculate
  if (x==y)
   return 0
  end

  #ceil and - x/d when x>=d
  if (x>=d)
    r=((y.to_f)/d).ceil-(x/d)
  else
    #ceil and + x/d when x<d
    r=( ((y.to_f)/d).ceil+(x/d))
    # r-1 when y==(x+(d*d))
    if (y==(x+(d*d)))
      r=r-1
    end
  end
  r

end
