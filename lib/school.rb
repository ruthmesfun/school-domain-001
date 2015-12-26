# Write code here
#require 'pry'
class School
  attr_accessor :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new

  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = Array.new
      @roster[grade] << student
    end
  end
  
  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade]=students.sort
    end
  end

end

#binding.pry