class Thing
end
a = %q{def hello() "Hello there!" end}
#module_eval
Thing.module_eval(a)
puts Thing.new.hello()
#Thing.module_eval("invalid code", "dummy", 123)
class Person
end
#class_eval
Person.class_eval do
  def say_hello
    "Hello!!!"
  end
end

rathanak = Person.new
puts rathanak.say_hello
#instance_eval
Person.instance_eval do
  def human?
    true
  end
end
puts Person.human?
