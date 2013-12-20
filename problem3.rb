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

def get_prime_factors(n)
	return [n] if is_prime(n)
	(2...n/2).each do |x|
		if n%x ==0
			return get_prime_factors(x).concat(get_prime_factors(n/x))
		end
	end
end

puts get_prime_factors(13195).max == 29
puts get_prime_factors(600851475143).max



