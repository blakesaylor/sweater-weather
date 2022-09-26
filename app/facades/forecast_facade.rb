class ForecastFacade
  def self.get_forecast(location, hours=8)
    forecast_data = ForecastService.forecast_details(location)
  
    Forecast.new(forecast_data, hours)
  end
end