@rect = {}
# p must > 0
def rectangle(arr, p)
  return @rect["#{arr}_#{p}"] if @rect["#{arr}_#{p}"]
  result = 0
  length = arr.length
  length.times do |t1|
    ((t1 + (p -1))...length).each do |t2|
      result += @rect["#{arr[t1..t2]}_#{p}"] != nil ? @rect["#{arr[t1..t2]}_#{p}"] : (arr[t1..t2].count("1") == p ? 1 : 0)
    end
  end
  @rect["#{arr}_#{p}"] = result
  result
end

# arr = ["001", '010', '000']
# p = 1
arr = ["101", '000', '101']
p = 2
n,m = [3,3]
result = 0
arr.each_with_index do |a, i|
  result += rectangle(a, p)
end
arr.each_with_index do |a, i|
  if i > 0
    temp = a.split('')
    (i-1).times do |ii|
      puts "#{arr[i-ii].split('')}"
    end
  end
end
# other_arr = []
# n.times do |i|
#   temp = ''
#   m.times do |j|
#     temp += arr[i][j] + arr[i + 1][j]
#   end
#   other_arr << temp
# end
# puts "#{other_arr}"
puts result
