class BookService
  def self.conn
    connection = Faraday.new(url: "http://openlibrary.org") do |faraday|
    end
  end

  def self.book_details(title)
    response = conn.get("/search.json?title=#{title}")
    JSON.parse(response.body, symbolize_names: true)
  end
end