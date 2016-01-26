items = [{id: 0, value: 45},{id: 1, value: 23},{id:2, value:34},{id:3, value:23},{id:4, value: 12}]
##The difference between find and select first
test = items.find {|item|
  puts "find"
 item[:value] == 23
}
puts test[:id]
test = items.select {|item|
  puts "select"
  item[:value] == 23
}.first
puts test[:id]
