=begin

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first 
ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first 
one hundred natural numbers and the square of the sum.

=end

def sum_of_squares(n)
	(1..n).to_a.map {|x| x**2}.reduce(:+)
end

def square_of_sum(n)
	(1..n).reduce(:+)**2
end

puts square_of_sum(100)-sum_of_squares(100)