require 'rails_helper'

RSpec.describe 'LocationFacade', :vcr do
  it 'makes a call and returns a hash with latitude and longitude' do
    city = "Edmond, OK"
    location = LocationFacade.get_lat_long(city)

    expect(location).to be_a Location
    expect(location.latitude).to be_a Float
    expect(location.longitude).to be_a Float
  end
end