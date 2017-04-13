@rect = {}
def rectangle(arr, p, k)
  if arr.length < p * k
    @rect["#{arr}_#{k}"] = 0
    return 0
  end

  @rect["#{arr}_#{k}"] = arr.count("1") == p ? 1 : 0
  
  left = @rect["#{arr[k..-1]}_#{k}"] != nil ? @rect["#{arr[k..-1]}_#{k}"] : rectangle(arr[k..-1], p, k)
  right = @rect["#{arr[0..-(1+k)]}_#{k}"] != nil ? @rect["#{arr[0..-(1+k)]}_#{k}"] : rectangle(arr[0..-(1+k)], p, k)

  # left = @rect["#{arr[1..-1]}_#{k}"] ? @rect["#{arr[1..-1]}_#{k}"] : rectangle(arr[1..-1], p, k)
  # right = @rect["#{arr[0..-2]}_#{k}"] ? @rect["#{arr[0..-2]}_#{k}"] : rectangle(arr[0..-2], p, k)

  @rect["#{arr}_#{k}"] + left + right
end

# arr = ["001", '010', '000']
# p = 0
arr = ["101", '000', '101']
p = 1
n,m = [3,3]

result = 0
special = false
if p ==0
  p = 1
  special = true
end
arr.each do |a|
  result += rectangle(a, p, 1)
end
arr2 = []
m.times do |t|
  arr2[t] = arr[0][t]+arr[1][t]+arr[2][t]
  result += rectangle(arr2[t], p, 1)
end

result += rectangle(arr2.join(''), p, n)
result += rectangle(arr.join(''), p, m)
# the whole
if special
  result += arr.join('').count("1") >= 1 ? 1 : 0
  result = (n *( n+1) * m *(m+1)/4) - result
else
  result += arr.join('').count("1") == p ? 1 : 0
end
puts result