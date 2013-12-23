=begin

A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def is_palindrome?(n)
	num_array = n.to_s.split('')
	(0..num_array.length/2).each do |index|
		#puts "#{num_array[index]} , #{num_array[-index]}"
		return false unless num_array[index] == num_array[-index-1]
	end
	return true
end

palindromes = []
999.downto(100) do |x|	
	999.downto(100) do |y|
		if is_palindrome?(x*y)
			puts "x:#{x},y:#{y},x*y:#{x*y}"
			palindromes.push([x,y,x*y])
		end
	end
end
#end

puts palindromes.max { |a, b| a[2]<=>b[2] }.to_s
puts palindromes.length