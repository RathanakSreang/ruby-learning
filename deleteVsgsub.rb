line = "He\"ll\'o W\"orl\'d"
puts line.class
puts line.gsub("\"", '').split(',', -1)[-1]
puts line.delete("\"").split(',', -1)[-1]
