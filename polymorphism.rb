class Animal
  attr_accessor :name
  def initialize(name)
    @name =name
  end
end
class Cat < Animal
  def talk
    "#{@name} can Meaow!"
  end
end
class Dog < Animal
  def talk
    "#{@name} can Woof!"
  end
end
animals = [Cat.new("Flossie"), Dog.new("Fido"), Cat.new("Tinkle")]
animals.each do |animal|
  puts animal.talk
end