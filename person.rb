class Thing
  #@name= "Rathanak"
  attr_reader :sex
  attr_writer :age
  attr_accessor :grade

  def self.all_classmetohd
    ['cat', 'dog', 'cow', 'duck', 'pig', 'hourse']
  end
  def initialize(value = "Testing", s="M", a= 21)
    @value = value
    @sex = s
    @age = a
    puts "Thing have been instantiated."
  end

  def set_value=(value)
    @value = value
  end

  def get_value
    puts "getting value #{@value}"
    @value
  end
  def area
    puts "Area is #{@value}"
  end
end

p = Thing.new
p.area
p.set_value = "Kimly"
p.area
p.get_value
puts "her sex is #{p.sex}"
#p.sex = "F"
#puts "Age = #{p.age}"
p.age = 21
#puts "Age = #{p.age}"
puts "Grade = #{p.grade}"
p.grade = 12
puts "Grade = #{p.grade}"
