class Roadtrip 
  attr_reader :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta,
              :id

  def initialize(origin, destination, direction_data, weather_data)
    @id = nil
    @start_city = origin
    @end_city = destination

    if is_drivable?(direction_data)
      @travel_time = direction_data[:route][:formattedTime]

      travel_time_seconds = time_string_to_seconds(direction_data[:route][:formattedTime])

      @weather_at_eta = get_destination_weather(weather_data, travel_time_seconds)
    else
      @travel_time = "Impossible Route"
      @weather_at_eta = ""
    end
  end

  def is_drivable?(direction_data)
    if direction_data[:route][:routeError][:errorCode] == 2
      false
    else
      true
    end
  end

  def time_string_to_seconds(time_string)
    time_string.split(':').map(&:to_i).inject(0) { |a, b| a * 60 + b }
  end

  def get_destination_weather(weather_data, travel_time_seconds)
    if (travel_time_seconds.to_f / 86400) < 2
      hour_index = (travel_time_seconds.to_f / 3600).round
      @weather_at_eta = {
        temperature: weather_data.hourly_weather[hour_index][:temperature],
        conditions: weather_data.hourly_weather[hour_index][:conditions]
      }
    elsif (travel_time_seconds.to_f / 86400).between?(2, 8)
      day_index = (travel_time_seconds.to_f / 86400).round
      @weather_at_eta = {
        temperature: weather_data.daily_weather[day_index][:max_temp],
        conditions: weather_data.daily_weather[day_index][:conditions]
      }
    else
      @weather_at_eta = "Unable to return weather at final destination."
    end
  end
end