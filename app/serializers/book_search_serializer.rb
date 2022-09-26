class BookSearchSerializer
  def self.location_weather_books(location, current_weather, total_book_count, books)
    {
        data: {
          id: nil,
          type: "books",
          attributes: {
            destination: location,
            forecast: {
              summary: current_weather[:conditions],
              temperature: current_weather[:temperature].to_s + " F"
            },
            total_books_found: total_book_count,
            books: books
          }
        }
      }
  end
end
