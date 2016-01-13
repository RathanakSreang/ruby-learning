require 'ostruct'
person = OpenStruct.new
person.name = "Fred Bloggs"
person.age = 25
puts "Person name #{person.name} age #{person.age}"
