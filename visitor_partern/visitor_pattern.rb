class CarElement
  def accept(car_element_visitor)
     car_element_visitor.visit(self)
  end
end
class Wheel < CarElement
  def accept(car_element_visitor)
    car_element_visitor.visit(self)
  end
end
