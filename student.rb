class Student
  attr_accessor :name
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(student)
    self.grade > student.grade
  end
  
  protected
  
  attr_accessor :grade
end

bob = Student.new('Bob', 5)
susan = Student.new('Susan', 6)

puts bob.better_grade_than?(susan)
puts susan.better_grade_than?(bob)
