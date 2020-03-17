class Student

  attr_writer :name, :cohort
  attr_reader :name, :cohort

  def initialize(input_student_name, input_cohort)
    @name = input_student_name
    @cohort = input_cohort
  end

  def talk
    return "I can talk!"
  end

  def favourite_programming_language(programming_language)
    return "I love #{programming_language}"
  end
end
