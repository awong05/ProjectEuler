require 'prime'

$factor_array = []

def factor(n)
	counter = 2
	counter += 1 until n % counter == 0 && counter.prime?
	$factor_array << counter
	if n != counter
		factor(n/counter)
	else
		puts $factor_array.pop
		Process.exit(0)
	end
end

factor(600851475143)