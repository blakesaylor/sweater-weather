class Weather
  attr_reader :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)  
    # Current Weather Details to be used
    @current_weather = Hash.new
    @current_weather[:datetime] = Time.at(data[:current][:dt]).to_datetime # Current Time
    @current_weather[:sunrise] = Time.at(data[:current][:sunrise]).to_datetime # Sunrise Time
    @current_weather[:sunset] = Time.at(data[:current][:sunset]).to_datetime # Sunset Time
    @current_weather[:temperature] = data[:current][:temp].to_f # Current Temperature, Convert to Float if comes as as Integer
    @current_weather[:feels_like] = data[:current][:feels_like].to_f # Current Feels Like Temperature, Convert to Float if comes as Integer
    @current_weather[:humidity] = data[:current][:humidity] # Current Humidity
    @current_weather[:uvi] = data[:current][:uvi] # Current UVI
    @current_weather[:visibility] = data[:current][:visibility] # Current Visibility
    @current_weather[:conditions] = data[:current][:weather][0][:description] # Current Weather Description
    @current_weather[:icon] = data[:current][:weather][0][:icon] # Current Weather Icon

    @daily_weather = Array.new

    # Daily weather to be used
    # Will want to start at search[:daily][1] since search[:daily][0] is the current date
    data[:daily][1..5].each do |day|
      day_data = Hash.new
      day_data[:date] = Time.at(day[:dt]).strftime("%Y-%m-%e")
      day_data[:sunrise] = Time.at(day[:sunrise]).to_datetime
      day_data[:sunset] = Time.at(day[:sunset]).to_datetime
      day_data[:max_temp] = day[:temp][:max].to_f
      day_data[:min_temp] = day[:temp][:min].to_f
      day_data[:conditions] = day[:weather][0][:description]
      day_data[:icon] = day[:weather][0][:icon]
      @daily_weather << day_data
    end

    @hourly_weather = Array.new

    # Hourly weather to be used
    # Will want to start at search[:hourly][1] since search[:hourly][0] is the current hour
    data[:hourly][1..8].each do |hour|
      hour_data = Hash.new
      hour_data[:time] = Time.at(hour[:dt]).strftime("%H:%M:%S")
      hour_data[:temperature] = hour[:temp].to_f
      hour_data[:conditions] = hour[:weather][0][:description]
      hour_data[:icon] = hour[:weather][0][:icon]
      @hourly_weather << hour_data
    end
  end
end