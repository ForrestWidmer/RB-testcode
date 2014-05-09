=begin
 each Student has some fives, tens, and twenties. Return the name 
 of the student with the most money. If every student has the same amount, then 
 the return value should be "all" If only one student, he has the most money.
=end

class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end

  def total_money # Create instance method to total up a students money.
    (fives * 5) + (tens * 10) + (twenties * 20)
  end
end

s1 = Student.new("Bob", 1, 2, 3)
s2 = Student.new("Joe", 2, 3, 4)
s3 = Student.new("Julie", 5, 6, 7)

students = [s1, s2, s3]

#return "all" if 
  # 1) there is more then one student 
  # 2) if each students total money is added up (via the instance method) 
      #then any duplicates are removed, it should equal 1. If false:
  #return the student with the greatest value passed in via total_money and max_by
  
  def most_money(students)
    return "all" if students.length > 1 && students.map(&:total_money).uniq.length == 1
    puts students.max_by(&:total_money).name
  end

most_money(students)