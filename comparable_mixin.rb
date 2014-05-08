class Person
  include Comparable
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def to_s
    "#{name}"
  end
  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("John")
p2 = Person.new("Bob")
p3 = Person.new("Zach")
p4 = Person.new("Zach")

if p1 > p2
  puts "#{p1.name}'s name > #{p2.name}'s name."
end

if p3 == p4
  puts "#{p3.name}'s name is the same as #{p4.name}"
end

puts "Sorted list:"
puts [p1, p2, p3].sort