class ForecastSerializer
  include JSONAPI::Serializer
  attributes :id, :current_weather, :hourly_weather, :daily_weather
end
