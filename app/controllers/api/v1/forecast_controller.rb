class Api::V1::ForecastController < ApplicationController
  def index
    city_state = params[:location]
    location_lat_long = LocationFacade.get_lat_long(city_state)
    forecast = ForecastFacade.get_forecast(location_lat_long)
    render json: ForecastSerializer.new(forecast)
  end
end