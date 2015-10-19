require 'prime'

(1..1_000_000).each do |n|
	next unless n.prime_division.length == 4
	if (n+1).prime_division.length == 4 and
		(n+2).prime_division.length == 4 and
		(n+3).prime_division.length == 4
	  puts n
	  break
	end
end