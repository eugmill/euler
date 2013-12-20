=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def is_prime(n)
	return false if n==1
	(2...n/2).each do |x|
		return false if n%x==0
	end
	true
end

i = 1
puts "#{i} is prime: #{is_prime(i)}"
i = 7
puts "#{i} is prime: #{is_prime(i)}"
i = 9
puts "#{i} is prime: #{is_prime(i)}"
i = 12
puts "#{i} is prime: #{is_prime(i)}"
i = 13
puts "#{i} is prime: #{is_prime(i)}"


def largest_prime(n)
end

puts largest_prime(13195) == 29



