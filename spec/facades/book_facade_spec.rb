require 'rails_helper'

RSpec.describe 'BookFacade', :vcr do
  describe '#get_books' do
    it 'makes a call and returns a hash with specified number of Books data' do
      title = "denver,co"
      quantity = '5'
      book_info = BookFacade.get_books(title, quantity)

      expect(book_info).to be_a Hash
      expect(book_info.keys.count).to eq 2
      expect(book_info.keys).to include(:total_hits, :books)

      expect(book_info[:total_hits]).to be_a Integer
      expect(book_info[:total_hits]).to eq 38

      book_info[:books].each do |book|
        expect(book).to be_a Book

        expect(book.title).to be_a String

        if book.isbn.is_a?(Array)
          book.isbn.each do |isbn|
            expect(isbn).to be_a String
          end
        else
          expect(book.isbn).to be_a String
        end

        if book.publisher.is_a?(Array)
          book.publisher.each do |publisher|
            expect(publisher).to be_a String
          end
        else
          expect(book.publisher).to be_a String
        end
      end
    end
  end

  # describe '#get_total_book_count' do
  #   it 'returns the total count of books for a given search term' do
  #     title = "denver,co"
  #     total_books = BookFacade.get_total_book_count(title)
  #     expect(total_books).to eq 38
  #   end
  # end
end