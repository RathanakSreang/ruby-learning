class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    minutes * 60
  end
  def days
    hours * 60
  end
  def ago
    Time.now - self
  end
  def from_now
    Time.now + self
  end
end
puts Time.now
puts 3.days.from_now
puts 3.hours
puts 3.days.ago