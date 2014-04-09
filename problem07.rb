require 'prime'

count = 6
n = 13

until count == 10001 do
	n += 1
	count += 1 if n.prime?
end

print n