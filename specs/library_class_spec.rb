require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes_lab_library')

class TestLibrary < MiniTest::Test


  def setup()
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details:
      {
        student_name: "Jeff",
        date: "01/12/16"
      }
    },
      {
        title: "the_lost_valley",
        rental_details:
        {
          student_name: "Matt",
          date: "13/02/09"
        }
      }
    ]

    @library = Library.new(@books)

  end

    def test_book_list()
      book_list = @library.books()
      assert_equal(@books, book_list)
    end

    # def test_book_name_returns_info
    #   @library = Library.new(@books)
    #
    #   result = @library.book_name_returns_info("lord_of_the_rings")
    #   assert_equal({
    #     title: "lord_of_the_rings",
    #     rental_details:
    #   {
    #     student_name: "Jeff",
    #     date: "01/12/16"
    #   }
    # }, result)
    # end

    def test_book_name_returns_info()
      result = @library.book_name_returns_info("lord_of_the_rings")
      assert_equal("lord_of_the_rings", result[:title])
    end
end
