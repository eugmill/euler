=begin

2520 is the smallest number that can be divided by each of the numbers 
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by 
all of the numbers from 1 to 20?
=end

def divisible_up_to_20?(n)
	20.downto(2).each do |x|
		return false unless n%x==0 
	end
	return true
end

# 9699690 = 2*3*5*7*11*13*17*19
# Any number divisible by every number up to 20 must be divisible by the product
# of the primes less than 20. In short, all the primes less than 20 are guaranteed
# to be in the prime factorization of the solution. This reduces the search space 
# to multiples of 9,699,690

i=9699690
until divisible_up_to_20?(i) do
	i+= 9699690
	puts i
end

puts i