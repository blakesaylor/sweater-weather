class Api::V1::ForecastController < ApplicationController
  def index
    city_state = params[:location]
    lat_long = LocationFacade.get_lat_long(city_state)
  end
end