class BookFacade
  def self.get_books(title, quantity)
    all_books_data = BookService.book_details(title)
    output = Hash.new
    output[:books] = []

    total_hits = all_books_data[:numFound]
    output[:total_hits] = total_hits

    index_end = quantity.to_i - 1
  
    all_books_data[:docs][0..index_end].each do |book_data|
      output[:books] << Book.new(book_data)
    end

    output
  end

  # def self.get_total_book_count(title)
  #   BookService.book_details(title)[:numFound]
  # end
end