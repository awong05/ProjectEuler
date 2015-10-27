require 'prime'

a = Prime.take_while {|n| n < 10_000}.select {|n| n > 1_000}

while a.any?
	x = a.shift
	y = x + 3330
	z = y + 3330
	b = "#{x}#{y}#{z}" if x != 1487 and y.prime? and z.prime? and x.to_s.chars.sort == y.to_s.chars.sort and y.to_s.chars.sort == z.to_s.chars.sort
	break if not b.nil?
end

puts b