require 'rails_helper'

describe 'Forecast API' do
  describe 'Happy Path' do
    it 'when successful, renders a 200 status and sends a hash of weather data', :vcr do
      get '/api/v1/forecast?location=edmond,ok'
      
      expect(response).to be_successful
      expect(response.status).to eq 200

      forecast = JSON.parse(response.body, symbolize_names: true)

      expect(forecast).to be_a Hash
      expect(forecast.keys.count).to eq 1
      expect(forecast.keys).to eq [:data]

      expect(forecast[:data]).to be_a Hash
      expect(forecast[:data].keys.count).to eq 3
      expect(forecast[:data].keys).to eq [ :id, :type, :attributes ]

      expect(forecast[:data][:id]).to eq nil

      expect(forecast[:data][:type]).to be_a String
      expect(forecast[:data][:type]).to eq 'forecast'

      expect(forecast[:data][:attributes]).to be_a Hash
      expect(forecast[:data][:attributes].keys.count).to eq 3
      expect(forecast[:data][:attributes].keys).to include(:current_weather, :hourly_weather, :daily_weather)

      expect(forecast[:data][:attributes][:current_weather]).to be_a Hash
      expect(forecast[:data][:attributes][:current_weather].keys.count).to eq 10
      expect(forecast[:data][:attributes][:current_weather].keys).to include(:datetime, :sunrise, :sunset, :temperature, :feels_like, :humidity, :uvi, :visibility, :conditions, :icon)
      expect(forecast[:data][:attributes][:current_weather].keys).to_not include(:dt, :temp, :pressure, :dew_point, :clouds, :wind_speed, :wind_deg, :weather)

      expect(forecast[:data][:attributes][:current_weather][:datetime]).to be_a String
      expect(forecast[:data][:attributes][:current_weather][:sunrise]).to be_a String
      expect(forecast[:data][:attributes][:current_weather][:sunset]).to be_a String
      expect(forecast[:data][:attributes][:current_weather][:temperature]).to be_a Float
      expect(forecast[:data][:attributes][:current_weather][:feels_like]).to be_a Float
      expect(forecast[:data][:attributes][:current_weather][:humidity]).to be_a Numeric
      expect(forecast[:data][:attributes][:current_weather][:uvi]).to be_a Numeric
      expect(forecast[:data][:attributes][:current_weather][:visibility]).to be_a Numeric
      expect(forecast[:data][:attributes][:current_weather][:conditions]).to be_a String
      expect(forecast[:data][:attributes][:current_weather][:icon]).to be_a String

      expect(forecast[:data][:attributes][:hourly_weather]).to be_an Array
      expect(forecast[:data][:attributes][:hourly_weather].count).to eq 8

      forecast[:data][:attributes][:hourly_weather].each do |hour|
        expect(hour).to be_a Hash
        expect(hour.keys.count).to eq 4
        expect(hour.keys).to include(:time, :temperature, :conditions, :icon)
        expect(hour.keys).to_not include(:dt, :temp, :feels_like, :pressure, :humidity, :dew_point, :uvi, :clouds, :visibility, :wind_speed, :wind_deg, :wind_gust, :pop, :weather)

        expect(hour[:time]).to be_a String
        expect(hour[:temperature]).to be_a Float
        expect(hour[:conditions]).to be_a String
        expect(hour[:icon]).to be_a String
      end

      forecast[:data][:attributes][:daily_weather].each do |day|
        expect(day).to be_a Hash
        expect(day.keys.count).to eq 7
        expect(day.keys).to include(:date, :sunrise, :sunset, :max_temp, :min_temp, :conditions, :icon)
        expect(day.keys).to_not include(:dt, :moonrise, :moonset, :moon_phase, :temp, :feels_like, :pressure, :humidity, :dew_point, :wind_speed, :wind_deg, :wind_gust, :weather, :clouds, :pop, :uvi)

        expect(day[:date]).to be_a String
        expect(day[:sunrise]).to be_a String
        expect(day[:sunset]).to be_a String
        expect(day[:max_temp]).to be_a Float
        expect(day[:min_temp]).to be_a Float
        expect(day[:conditions]).to be_a String
        expect(day[:icon]).to be_a String
      end
    end
  end

  describe 'Sad Path' do
    
  end
end