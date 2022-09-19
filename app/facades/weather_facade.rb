class WeatherFacade
  def self.get_weather(location)
    weather_data = WeatherService.weather_details(location)
  
    Weather.new(weather_data)
  end
end