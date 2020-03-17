class Library

attr_reader :books
attr_writer :books

def initialize(books)
  @books = books
end

# def book_name_returns_info(book_name)
#   if @books.include?(book_name)
#     return @books
#   end
# end

book_name_returns_info(title)
 found_book = nil
 for book in @books
   if book[:title] == title
     selected_book = book
   end
 end
 return selected_book
end
