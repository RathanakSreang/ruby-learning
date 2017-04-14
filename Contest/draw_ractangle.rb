@rect = {}
@sum_arr = {}
def rectangle(arr, p)
  return @rect["#{arr}"] if @rect["#{arr}"]
  result = 0
  length = arr.length
  length.times do |t1|
    result += if @rect["#{arr[t1..length]}_t1"]
      @rect["#{arr[t1..length]}_t1"]
    else
      temp = 0
      (t1...length).each do |t2|
        temp += if @rect["#{arr[t1..t2]}"]
          @rect["#{arr[t1..t2]}"]
        else
          @rect["#{arr[t1..t2]}"] = (arr[t1..t2].reduce(:+) == p ? 1 : 0)
        end
      end
      @rect["#{arr[t1..length]}_t1"] = temp
    end
  end
  @rect["#{arr}"] = result
  result
end

def sum_row(arr)
  return @sum_arr["#{arr}"] if @sum_arr["#{arr}"]
  result = []
  length = arr.length
  sub_l = arr[0].length
  length.times do |t1|
    result += if @sum_arr["#{arr[t1..length]}_t1"]
      @sum_arr["#{arr[t1..length]}_t1"]
    else
      temp = []
      (1+t1...length).each do |t2|
        temp << if @sum_arr["#{arr[t1..t2]}"] && false
          @sum_arr["#{arr[t1..t2]}"]
        else
          @sum_arr["#{arr[t1..t2]}"] = (0...sub_l).map do |index|
            s = 0
            arr[t1..t2].each do |a|
              s += a[index]
            end
            s
          end
          @sum_arr["#{arr[t1..t2]}"]
        end
      end
      @sum_arr["#{arr[t1..length]}_t1"] = temp
    end
  end
  @sum_arr["#{arr}"] = result
  result
end

# arr = ["001", '010', '000']
# p = 0
# arr = ["100", '011', '101', '111']
# arr = ["101", '000', '101']
# p = 2
n,m,p = gets.split.map(&:to_i)

result = 0
cont_arr = []
# arr.each_with_index do |a, index|
#   a = a.split('').map(&:to_i)
n.times do
  a = gets
  a = a.split('').map(&:to_i)
  a.pop
  cont_arr << a
  result += rectangle(a, p)
end
sum_row(cont_arr).each do |a|
  result += rectangle(a, p)
end
puts result
