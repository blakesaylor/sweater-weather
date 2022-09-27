class LocationFacade
  def self.get_lat_long(location)
    location_data = LocationService.lat_long_details(location)
  
    Location.new(location_data)
  end

  def self.get_road_trip(origin, destination, weather_data)
    direction_data = LocationService.direction_details(origin, destination)
    Roadtrip.new(origin, destination, direction_data, weather_data)
  end
end