require 'prime'
$count = 0

def truncatable(x)
	return false if x <= 19
	for i in 1...x.to_s.length
		return false unless x.to_s[i..-1].to_i.prime? and x.to_s[0..-(i+1)].to_i.prime?
	end
	$count += 1
	true
end

puts Prime.take_while {|p| p < 1_000_000}.select {|p| truncatable(p) and $count <= 11}.reduce(:+)