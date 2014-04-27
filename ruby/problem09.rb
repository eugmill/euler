=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc

=end


def sum_to_1000? (a,b,c)
	a+b+c == 1000
end

#Not used in this case
def perfect_square(n)
	Math.sqrt(n) == Math.sqrt(n).floor
end

def get_triplet1000 
	(1..1000).each do |a|
		(1..1000).each do |b|
			c = 1000 - (a+b)
			next if a>b || c<b
			puts "#{a},#{b},#{c}"
			if sum_to_1000?(a,b,c) && a**2 + b**2 == c**2
				return [a,b,c]
			end
		
		end
	end
end

start = Time.now

puts get_triplet1000

puts "Duration: #{Time.now - start} seconds"
