# k =3
# m =2
# arr = [1,2,4,8]
# arr1 = arr.sort

# k =2
# m =1
# arr = [1,1,1]
# arr1 = arr.sort

n, m, k = gets.split.map(&:to_i)
arr1 = gets.split.sort_by{ |i| i.to_i}

arr = arr1.pop(2)
b = arr1.shift.to_i
arr1.each do |e|
  b = b | e.to_i
end
result = 0
if arr.length == 1
  result = arr.first.to_i * (k ** m)
else
  f,s = arr
  ts = s.to_i * (k **(m-1))
  result = ((ts * k) | f.to_i)
  r2 = (ts | (f.to_i *k))
  result = r2 if result < r2
end
puts (result | b)
