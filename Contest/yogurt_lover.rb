n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
result = 0
result1 = 0
result1 = (n / a).to_i if n >= a
while n >= b do
  count = (n / b).to_i
  n = n % b + count * c
  result += count
end
result += (n / a).to_i if n >= a

puts result > result1 ? result : result1