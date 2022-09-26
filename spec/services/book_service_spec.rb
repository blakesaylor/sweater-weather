require 'rails_helper'

describe BookService do
  context "class methods" do
    context "#forecast_details" do
      it "returns book data based on a search", :vcr do
        location = "denver,co"
        search = BookService.book_details(location)

        binding.pry

        expect(search).to be_a Hash

        expect(search[:docs]).to be_an Array
        expect(search[:docs][0]).to be_a Hash
        expect(search[:docs][0][:title]).to be_an String
        expect(search[:docs][0][:publisher]).to be_an Array
        expect(search[:docs][0][:publisher][0]).to be_a String

        # Need to find ISBN
      end
    end
  end
end