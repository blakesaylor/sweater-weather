# class BookSearch
#   attr_reader :id,
#               :destination,
#               :forecast,
#               :total_books_found,
#               :books

#   def initialize(location, current_weather, total_book_count, books)
#     @id = nil
#     @destination = location
#     @forecast = Hash.new
#     @forecast[:summary] = current_weather[:conditions]
#     @forecast[:temperature] = current_weather[:temperature].to_i.to_s + " F"
#     @total_books_found = total_book_count
#     @books = books
#   end
# end