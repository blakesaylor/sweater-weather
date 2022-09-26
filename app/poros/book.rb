class Book
  attr_reader :isbn,
              :title,
              :publisher

  def initialize(data)
    @title = data[:title].nil? ? "No title data available" : data[:title]
    @isbn = data[:isbn].nil? ? "No ISBN data available" : data[:isbn]
    @publisher = data[:publisher].nil? ? "No publisher data available" : data[:publisher]
  end
end