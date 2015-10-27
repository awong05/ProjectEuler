require 'prime'
sum = Prime.take_while { |p| p < 2000000 }.reduce(:+)