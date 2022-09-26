require 'rails_helper'

describe 'Book API' do
  describe 'Happy Path' do
    it 'when successful, renders a 200 status and sends a hash of book search', :vcr do
      get "/api/v1/book-search?location=denver, co&quantity=5"
      
      expect(response).to be_successful
      expect(response.status).to eq 200

      book_search = JSON.parse(response.body, symbolize_names: true)

      expect(book_search).to be_a Hash
      expect(book_search.keys.count).to eq 1
      expect(book_search.keys).to eq [:data]

      expect(book_search[:data]).to be_a Hash
      expect(book_search[:data].keys.count).to eq 3
      expect(book_search[:data].keys).to include(:id, :type, :attributes)

      expect(book_search[:data][:id]).to eq nil

      expect(book_search[:data][:type]).to be_a String
      expect(book_search[:data][:type]).to eq 'books'

      expect(book_search[:data][:attributes]).to be_a Hash
      expect(book_search[:data][:attributes].keys.count).to eq 4
      expect(book_search[:data][:attributes].keys).to include(:destination, :forecast, :total_books_found, :books)

      expect(book_search[:data][:attributes][:destination]).to be_a String

      expect(book_search[:data][:attributes][:forecast]).to be_a Hash
      expect(book_search[:data][:attributes][:forecast].keys.count).to eq 2
      expect(book_search[:data][:attributes][:forecast].keys).to include(:summary, :temperature)

      expect(book_search[:data][:attributes][:total_books_found]).to be_a Numeric

      expect(book_search[:data][:attributes][:books]).to be_a Array

      book_search[:data][:attributes][:books].each do |book|
        expect(book).to be_a Hash
        expect(book.keys.count).to eq 3
        expect(book.keys).to include(:isbn, :title, :publisher)

        if book[:isbn].class == Array
          expect(book[:isbn]).to be_an Array
          book[:isbn].each do |isbn|
            expect(isbn).to be_a String
          end
        else
          expect(book[:isbn]).to be_a String
        end

        expect(book[:title]).to be_a String

        if book[:publisher].class == Array
          expect(book[:publisher]).to be_an Array
          book[:publisher].each do |publisher|
            expect(publisher).to be_a String
          end
        else
          expect(book[:publisher]).to be_a String
        end
      end
    end
  end

  describe 'Sad Path' do
    
  end
end