def calculate(max1, max2, k, m)
  max = 0
  (0...m).each do |t|
    tem = ((max1 * k ** m - t) | (max2 * k ** t))
    max = tem if max < tem
  end
  max
end

# n = 4
# k =3
# m =2
# arr = [1,2,4,8]
# arr1 = arr.sort

# n = 3
# k =2
# m =1
# arr = [1,1,1]
# arr1 = arr.sort
# [1,2,4,8].each do |i|
# [1,1,1].each do |i|

max1 = nil
max2 = nil
f_or = nil
n, m, k = gets.split.map(&:to_i)
gets.split.each do |i|
  num = i.to_i
  if max1 == nil
    max1 = num
  elsif max2 == nil
    if max1 < num
      max2 = max1
      max1 = num
    else
      max2 = num
    end
  else
    if max1 < num
      tem = max2
      max2 = max1
      max1 = num
      num = tem
    else
      if max2 < num
        tem = max2
        max2 = num
        num = tem
      end
    end
    if f_or == nil
      f_or = num
    else
      f_or = (f_or | num)
    end
  end
end
result = nil
if n == 1
  result = max1 * (k ** m)
else
  result = (f_or.to_i | calculate(max1, max2, k, m))
end
puts result
