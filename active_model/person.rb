require 'active_model'
class Person
  include ActiveModel::Model

  attr_accessor :name, :age
  validates_presence_of :name
end
person = Person.new(name: 'bob', age: '18')
puts person.name
puts person.age
puts person.valid?
class Person
  include ActiveModel::AttributeMethods

  attribute_method_prefix 'clear_'
  define_attribute_methods :name, :age, :hel

  attr_accessor :name, :age

  def clear_attribute(attr)
    send("#{attr}=", nil)
  end
  
  def make_(hello)
    puts "#{hello} has been call"
  end
end
person = Person.new
person.clear_name
person.clear_age
person.make_hel
