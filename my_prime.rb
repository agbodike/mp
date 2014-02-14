class Integer
  def prime?
    case
    # simple cases for performance
    when self < 2 then false
    when self == 2 then true
    when self == 3 then true
    when self % 2 == 0 then false
    when self % 3 == 0 then false
    #general prime test
    else
      test_top = Math.sqrt(self).ceil    # get the lowest integer >= to root of the integer in question
      return true if test_top < 5        # Any composite with a root ceiling less than 5 would have been found above
      test_range = (5..test_top)         # Already tested division by 2&3, start with 5 as it is the next prime
      test_range.each do |test|
        if (self % test == 0) then return false end
      end
      true
    end
  end

end
