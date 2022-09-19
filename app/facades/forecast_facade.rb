class ForecastFacade
  def self.get_forecast(location)
    forecast_data = ForecastService.forecast_details(location)
  
    Forecast.new(forecast_data)
  end
end