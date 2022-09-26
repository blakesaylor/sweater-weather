class Api::V1::BookController < ApplicationController
  def index
    location_lat_long = LocationFacade.get_lat_long(params[:location])
    current_weather = ForecastFacade.get_forecast(location_lat_long).current_weather
    books_info = BookFacade.get_books(params[:location], params[:quantity])
    # total_book_count = BookFacade.get_total_book_count(params[:location])
    render json: BookSearchSerializer.location_weather_books(params[:location], current_weather, books_info)

    # Pre-refactoring code
    # final_book_index = params[:quantity].to_i - 1 
    # books = BookFacade.get_books(params[:location])
    # total_book_count = books.count
    # book_array = books[0..final_book_index]
    # book_search = BookSearch.new(params[:location], current_weather, total_book_count, book_array)
  end
end