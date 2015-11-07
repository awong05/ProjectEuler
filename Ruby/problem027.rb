require 'prime'
coefficients = {}

b = Prime.take_while {|n| n < 1000}

(-999..999).each do |x|
	for y in b
		n = 0
		while (n ** 2 + x * n + y).prime?
			n += 1
		end
		coefficients["#{x} * #{y}"] = n
	end
	puts x
end

puts coefficients.key(coefficients.values.max)