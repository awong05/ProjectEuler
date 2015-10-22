def sum_factors(x)
	1.upto(Math.sqrt(x)).select {|n| (x % n).zero?}.each_with_object([1]) {|n, a| a << n << x / n unless x / n == x}.reduce(:+)
end

a =* (2...10000)
b = []

while x = a.shift
	b << x if x == sum_factors(sum_factors(x)) unless x == sum_factors(x)
end

puts b.reduce(:+)