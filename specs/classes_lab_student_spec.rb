require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes_lab_student')

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Francesco", "G18")
    assert_equal("Francesco", student.name)
  end

  def test_get_student_cohort
    student = Student.new("Francesco", "G18")
    assert_equal("G18", student.cohort)
  end

  def test_student_can_talk
    student = Student.new("Bro", "G18")
    assert_equal("I can talk!", student.talk)
  end

  def test_student_favourite_programming_language
    #Given I have student
    student = Student.new("Bro", "G18")
    #When I call favourite_programming_language
    result = student.favourite_programming_language("Ruby")
    #Then I want to return I love Ruby
    assert_equal("I love Ruby", result)
  end
end
