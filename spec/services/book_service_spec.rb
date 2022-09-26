require 'rails_helper'

describe BookService do
  context "class methods" do
    context "#forecast_details" do
      it "returns book data based on a search", :vcr do
        location = "denver,co"
        search = BookService.book_details(location)

        expect(search).to be_a Hash

        expect(search[:docs]).to be_an Array
        expect(search[:docs][1]).to be_a Hash
        expect(search[:docs][1][:title]).to be_an String
        expect(search[:docs][1][:publisher]).to be_an Array
        expect(search[:docs][1][:publisher][0]).to be_a String
        expect(search[:docs][1][:isbn]).to be_a Array
      end
    end
  end
end