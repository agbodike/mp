#require File.dirname(__FILE__) + '/my_prime.rb'
#require './my_prime.rb'
require_relative 'my_prime'

times = ARGV[0] || 10
unless times.to_i > 0 then
  puts "Usage: multiply_primes [INTEGER]"
  puts "  if no command line parmater is presented, defaults to 10"
  abort
end

first_ten_primes = 1.next_primes.first(times.to_i)

print "      "
first_ten_primes.each { |prime| printf "%4d, ", prime }
puts

first_ten_primes.each do |prime|
  printf "%4d, ", prime
  first_ten_primes.each do |multiplier|
    printf "%4d, ", prime * multiplier
  end
  puts "\n"
end
