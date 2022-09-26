class BookFacade
  def self.get_books(title)
    all_books_data = BookService.book_details(title)
  
    all_books_data[:docs].map do |book_data|
      Book.new(book_data)
    end
  end
end