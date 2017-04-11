def sum_social(arr_social)
  if arr_social.length > 1
    min = arr_social.shift
    max = arr_social.pop
    return max - min + sum_social(arr_social)
  else
    return 0
  end
end

# n = gets.to_i
# arr = gets.split.map(&:to_i).sort
arr = "1 2 3 1 2".split.map(&:to_i).sort
# arr = "2 2 2".split.map(&:to_i)
# arr = arr.sort
puts "#{sum_social(arr)}"
