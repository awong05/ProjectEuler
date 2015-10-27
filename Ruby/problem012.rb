require 'prime'

def triangulate(n)
	n.downto(1).inject(:+)
end

(1..1_000_000).each do |x|
	n = triangulate(x)
	begin
		if n.prime_division.map {|a| a[1] + 1}.reduce(:*) > 500
			puts n
			break
		end
	rescue
	end
end