class LocationFacade
  def self.get_lat_long(location)
    location_data = LocationService.lat_long_details(location)
  
    Location.new(location_data)
  end
end