def sum_factors(x)
	1.upto(Math.sqrt(x)).select {|n| (x % n).zero?}.each_with_object([1]) {|n, a| a << n << x / n unless x / n == x}.uniq.reduce(:+)
end

$numbers =* (1..20161)
$abundants = (12..20161).select {|n| sum_factors(n) > n}

until $abundants.empty?
	x = $abundants.shift
	$numbers.delete_if {|n| (n % x == 0 and n != x) or $abundants.include?(n - x)}
end

puts $numbers.reduce(:+)