require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes_lab_library')

class TestLibrary < MiniTest::Test
  def test_list_of_books
    library = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        }
      ]
    )
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ], library.books)
  end

  def test_name_returns_info
    #Given I have the name of the book
    library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ])
    #When I call book_name_returns_info method
    library.book_name_returns_info("lord_of_the_rings")

    #Then I get rental_details: {
    #   student_name: "Jeff",
    #   date: "01/12/16"
    # }
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ], library.books)
  end

  def test_book_name_returns_rental_info
    library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    ])

    assert_equal({
      student_name: "Jeff",
      date: "01/12/16"
    },     library.book_name_returns_rental_info("lord_of_the_rings"))
  end
end
