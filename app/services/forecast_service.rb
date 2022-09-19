class ForecastService
  def self.conn
    connection = Faraday.new(url: "https://api.openweathermap.org") do |faraday|
      faraday.params['appid'] = ENV['openweather_api_key']
    end
  end

  def self.forecast_details(location)
    response = conn.get("/data/3.0/onecall?lat=#{location.latitude}&lon=#{location.longitude}&units=imperial")
    JSON.parse(response.body, symbolize_names: true)
  end
end