sum = 0

(3..2_540_160).each {|n| sum += n if n == n.to_s.chars.map {|d| d.to_i > 0 ? d.to_i.downto(1).inject(:*) : 1}.reduce(:+)}

puts sum