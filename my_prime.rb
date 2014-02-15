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

  # infinite sequence starting with the next integer
  def next_series
    Enumerator.new do |yielder, n: self|
    loop { yielder.yield(n += 1) } end.lazy
  end

  def next_prime
    self.next_series.each { |x| if x.prime? then return x end}
  end

  def next_primes
    Enumerator.new do |yielder, n: self|
    loop { yielder.yield(n = n.next_prime) } end.lazy
  end
end
