=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
that the 6th prime is 13.

10th - 29
20th - 71

What is the 10 001st prime number?


=end

# Solution is rather slow, optimize later. 

require './problem3.rb'

def i_th_prime(n)
	prime_index=0
	index = 1
	until prime_index==n
		prime_index+=1 if is_prime(index)
		#puts("#{prime_index},#{index}") if is_prime(index)
		index+=1
	end
	index-1
end

puts "6th prime: #{i_th_prime(6)}"
puts "10th prime: #{i_th_prime(10)}"
puts "20th prime: #{i_th_prime(20)}"

puts "10,001st prime: #{i_th_prime(10001)}"