class Ring
  attr_accessor :a,:b,:h, :top_list, :button_list

  def initialize(arr)
    @a,@b,@h = arr
    @top_list = []
    @button_list = []
  end

  def add_node(rings)
    rings.each do |ring|
      if @b > ring.a && @b <= ring.b
        @top_list << ring
        ring.button_list << self
      elsif ring.b > @a && ring.b <= @b
        @button_list << ring
        ring.top_list << self
      end
    end
  end

  def max_top_height
    max = 0
    @top_list.each do |ring|
      max = ring.max_top_height if  max < ring.max_top_height
    end
    @h + max
  end

  def max_bottom_height
    max = 0
    @button_list.each do |ring|
      max = ring.max_bottom_height if  max < ring.max_bottom_height
    end
    @h + max
  end

  # def max_height
  #   (max_bottom_height + max_top_height) - @h
  # end
end

class Graph
  attr_accessor :rings

  def initialize
    @rings = []
  end

  def add_ring(arr)
    ring = Ring.new arr
    ring.add_node(@rings)
    @rings << ring
  end

  def max_hieght
    @rings.max_by {|obj| obj.max_bottom_height}.max_bottom_height
  end
end

g = Graph.new
g.add_ring([1,5,1])
g.add_ring([2,6,2])
g.add_ring([3,7,3])
g.add_ring([4,8,4])
g.add_ring([5,9,5])
# g.add_ring([1,2,10])

# g.add_ring([1,2,1])
# g.add_ring([1,3,3])
# g.add_ring([4,6,2])

# n = gets.to_i
# arr = []
# n.times do
#   g.add_ring gets.split.map(&:to_i)
# end
puts g.max_hieght