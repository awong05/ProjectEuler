def sum_factors(x)
	1.upto(Math.sqrt(x)).select {|n| (x % n).zero?}.each_with_object([1]) {|n, a| a << n << x / n unless x / n == x}.reduce(:+)
end

$abundants = (12..28123).select {|n| sum_factors(n) > n}
$integers =* (1..28123)
$sums = []

while $abundants.length > 0
	x = $abundants.shift
	for y in (0...$abundants.length)
		break if x + $abundants[y] > 28123
		$sums << (x + $abundants[y]) unless $sums.include?(x + $abundants[y])
	end
end

puts ($integers - $sums).reduce(:+)