=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

require './problem3.rb'

prime_index=0
index = 1

puts is_prime(4)

until prime_index==10
	prime_index+=1 if is_prime(index)
	puts("#{prime_index},#{index}") if is_prime(index)
	index+=1
end

puts("#{prime_index},#{index+1}")