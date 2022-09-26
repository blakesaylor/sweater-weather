class Roadtrip 
  attr_reader :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta,
              :id

  def initialize(origin, destination, direction_data, destination_lat_long)
    binding.pry
    @id = nil
    @start_city = origin
    @end_city = destination

    if is_drivable?(direction_data)
      @travel_time = direction_data[:route][:formattedTime]
      @travel_time_seconds = time_string_to_seconds(direction_data[:route][:formattedTime])
      @arrival_time = DateTime.now + @travel_time_seconds
      @weather_at_eta = get_destination_weather(@travel_time_seconds)
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

  def get_destination_weather(seconds)
    if (seconds.to_f / 86400) < 2
      @weather_at_eta = "Get weather data based on hourly_weather."
    elsif (seconds.to_f / 86400).between?(2, 8)
      @weather_at_eta = "Get weather data based on daily_weather"
    else
      @weather_at_eta = "Unable to return weather at final destination."
    end
  end
end