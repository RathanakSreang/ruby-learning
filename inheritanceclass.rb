class LivingThing
  attr_accessor :life
  def intialize
    @life = true
  end
  def is_living
    @life
  end

  def is_deadth
    !@life
  end
end
class Plant < LivingThing
end
class Animal < LivingThing
  def eat
    puts "Animal is eating"
  end
  def breathe
    puts "Aminal is breathe"
  end
  def excrete
    puts "Aminal is excrete"
  end
end
class Mammal < Animal
end
class Fish <Animal
end
class Primate < Mammal
end
class Human < Primate
  def sing
    puts "Human can sing"
  end
  def love
    puts "Human have love"
  end
  def dance
    puts "Human love dance"
  end
end
class Ape < Primate
end
class Monkey < Primate
end
