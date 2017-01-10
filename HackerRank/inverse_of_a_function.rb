x = gets.to_i
arr_x = gets.split(" ").map(&:to_i)
arr_x.sort.each do |n|
  puts arr_x.index(n) + 1
end
