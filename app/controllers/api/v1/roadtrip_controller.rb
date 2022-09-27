class Api::V1::RoadtripController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])

    if user.nil?
      render json: {
        description: "Error: Invalid API Key."
      }, status: 401
    else
      destination_lat_long = LocationFacade.get_lat_long(params[:destination])
      weather_data = ForecastFacade.get_forecast(destination_lat_long, 48, 8)
      road_trip = LocationFacade.get_road_trip(params[:origin], params[:destination], weather_data)
      
      render json: RoadtripSerializer.new(road_trip)
    end
  end
end