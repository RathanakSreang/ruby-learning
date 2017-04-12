class Spice
  attr_accessor :left, :right, :specie, :replace_count

  def initialize
    @left = nil
    @right = nil
    @specie = nil
    @replace_count = 0
  end
end

# class House
#   attr_accessor :plants

#   def initialize
#     @plats = []
#   end

#   def add_plant(arr)
#     plant = Plant.new arr
#     plant.add_node(@plats)
#     @plats << plant
#   end
# end
# h = House.new
# n, m = gets.split.map(&:to_i)

# n.times do
#   h.add_plant gets.split.map(&:to_i)
# end
plants = []
s = Spice.new
plants << s
[[1,0.000000],[1,1.000000],[1,2.000000],[2,2.000001],[1,7.000000],[2,8.000000],[2,9.999999],[2,10.000000]].each do |p|
  if s.specie == nil
    s.specie = p[0]
    s.replace_count = 1
  elsif s.specie == p[0]
    s.replace_count += 1
  else
    puts "#{p}"
    tem = s
    s = Spice.new
    s.specie = p[0]
    s.replace_count = 1
    tem.right = s
    s.left = tem
    plants << s
  end
end
puts plants