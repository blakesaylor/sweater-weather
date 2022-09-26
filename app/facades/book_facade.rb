class BookFacade
  def self.get_books(title, quantity)
    all_books_data = BookService.book_details(title)

    index_end = quantity.to_i - 1
  
    all_books_data[:docs][0..index_end].map do |book_data|
      Book.new(book_data)
    end
  end

  def self.get_total_book_count(title)
    BookService.book_details(title)[:numFound]
  end
end