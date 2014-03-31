$factor_array = []

def prime(n)
	(2..n-1).each {|x| return false if n % x == 0}
	return true
end

def factor(n)
	counter = 2
	until n % counter == 0 && prime(counter)
		counter += 1
	end
	$factor_array << counter
	if n != counter
		factor(n/counter)
	else
		puts $factor_array.pop
		Process.exit(0)
	end
end

factor(600851475143)