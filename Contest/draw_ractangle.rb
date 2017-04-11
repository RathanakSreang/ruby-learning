# n, m, p = gets.split.map(&:to_i)
# arr = []
# n.times do
#   arr << gets.split('').map(&:to_i)
# end
arr = [[0, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]
rows = 4
cols = 4
p = 0
ex = [0, 0, 1, 0]
rows.times do |r|
  puts "#{ex[r]}"
#   cols.times do |c|
#     puts "[#{r}, #{c}], #{p}"
#   end
end
# puts "#{arr}"
