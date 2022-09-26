require 'rails_helper'

RSpec.describe 'BookFacade', :vcr do
  it 'makes a call and returns a hash with Books data' do
    title = "denver,co"
    books = BookFacade.get_books(title)

    expect(books).to be_a Array
    expect(books[1]).to be_a Book

    expect(books[1].title).to be_a String

    expect(books[1].isbn).to be_a Array
    expect(books[1].isbn[0]).to be_a String

    expect(books[1].publisher).to be_a Array
    expect(books[1].publisher[0]).to be_a String
  end
end