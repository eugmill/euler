=begin
	
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

=end

require './problem03.rb'

def sum_of_primes_below(n)
	sum = 2
	index = 1
	until index >= n
		puts "#{index}:#{sum}"
		sum += index if is_prime(index)
		index+=2
	end
	sum
end

puts sum_of_primes_below 10
puts sum_of_primes_below 2000000