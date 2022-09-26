class LocationFacade
  def self.get_lat_long(location)
    location_data = LocationService.lat_long_details(location)
  
    Location.new(location_data)
  end

  def self.get_road_trip(origin, destination)
    direction_data = LocationService.direction_details(origin, destination)
    destination_lat_long = get_lat_long(destination)

    Roadtrip.new(origin, destination, direction_data, destination_lat_long)
  end
end