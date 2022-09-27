class ForecastFacade
  def self.get_forecast(location, hours=8, days=5)
    forecast_data = ForecastService.forecast_details(location)
  
    Forecast.new(forecast_data, hours, days)
  end
end