require 'prime'
count = 0

Prime.take_while {|p| p < 1_000_000}.select do |p|
	circular = true
	for x in 1..p.to_s.chars.length
		circular = false unless p.to_s.chars.rotate(x).join.to_i.prime?
	end
	count += 1 if circular
end

puts count