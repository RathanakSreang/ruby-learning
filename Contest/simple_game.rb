n, m, k = gets.split.map &:to_i
arr = gets.split.map(&:to_i).sort
result = arr.pop
result = result * k ** m
arr.each {|a| result = result | a }
puts result