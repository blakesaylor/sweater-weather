class LocationService
  def self.conn
    connection = Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
    end
  end

  def self.lat_long_details(location)
    response = conn.get("/geocoding/v1/address?location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.direction_details(origin, destination)
    response = conn.get("/directions/v2/route?from=#{origin}&to=#{destination}")
    JSON.parse(response.body, symbolize_names: true)
  end
end