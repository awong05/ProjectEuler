require 'time'
count = 0

(1901..2000).each {|y| (1..12).each {|m| count += 1 if Time.parse("01-#{m}-#{y}").wday == 0}}

puts count