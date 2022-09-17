require 'rails_helper'

describe LocationService do
  context "class methods" do
    context "#lat_long_details" do
      it "returns location data based on a search", :vcr do
        location = "Edmond, OK"
        search = LocationService.lat_long_details(location)

        expect(search).to be_a Hash
        expect(search[:results]).to be_an Array
        expect(search[:results][0]).to be_a Hash
        expect(search[:results][0][:locations]).to be_an Array
        expect(search[:results][0][:locations][0]).to be_a Hash
        expect(search[:results][0][:locations][0][:latLng]).to be_a Hash
        expect(search[:results][0][:locations][0][:latLng][:lat]).to be_a Float
        expect(search[:results][0][:locations][0][:latLng][:lng]).to be_a Float
      end
    end
  end
end