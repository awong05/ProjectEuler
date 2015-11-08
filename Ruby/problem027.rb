require 'prime'
coefficients = {}

b = Prime.take_while {|n| n < 1000}

(-999..999).each do |x|
	for y in b
		n = 0
		n += 1 while (n ** 2 + x * n + y).prime?
		coefficients["#{x} * #{y}"] = n
	end
end

puts eval(coefficients.key(coefficients.values.max))