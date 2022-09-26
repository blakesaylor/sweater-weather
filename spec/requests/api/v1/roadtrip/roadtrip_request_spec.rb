require 'rails_helper'

describe 'Forecast API' do
  describe 'Happy Path' do
    it 'does the thing', :vcr do
      
    end
  end

  describe 'Sad Path' do
    it 'responds with an error hash with status 401 if the API Key is incorrect', :vcr do
      create_body = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(create_body)

      road_trip_input_body = {
        "origin": "Denver, CO",
        "destination": "London, England",
        "api_key": User.last.api_key + "messuptheapikey"
      }

      post api_v1_road_trip_index_path(road_trip_input_body)

      expect(response.status).to eq 401

      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to include(:description)

      expect(response_body[:description]).to be_a String
      expect(response_body[:description]).to eq 'Error: Invalid API Key.'
    end

    it 'responds with a hash with impossible route if is not possible to drive', :vcr do
      create_body = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(create_body)

      road_trip_input_body = {
        "origin": "Denver, CO",
        "destination": "London, England",
        "api_key": User.last.api_key
      }

      post api_v1_road_trip_index_path(road_trip_input_body)

      expect(response.status).to eq 200

      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to include(:data)

      expect(response_body[:data]).to be_a Hash
      expect(response_body[:data].keys.count).to eq 3
      expect(response_body[:data].keys).to include(:id, :type, :attributes)

      expect(response_body[:data][:id]).to eq nil

      expect(response_body[:data][:type]).to be_a String
      expect(response_body[:data][:type]).to eq 'roadtrip'

      expect(response_body[:data][:attributes]).to be_a Hash
      expect(response_body[:data][:attributes].keys.count).to eq 4
      expect(response_body[:data][:attributes].keys).to include(:start_city, :end_city, :travel_time, :weather_at_eta)

      expect(response_body[:data][:attributes][:start_city]).to be_a String
      expect(response_body[:data][:attributes][:start_city]).to eq road_trip_input_body[:origin]

      expect(response_body[:data][:attributes][:end_city]).to be_a String
      expect(response_body[:data][:attributes][:end_city]).to eq road_trip_input_body[:destination]

      expect(response_body[:data][:attributes][:travel_time]).to be_a String
      expect(response_body[:data][:attributes][:travel_time]).to eq "Impossible Route"

      expect(response_body[:data][:attributes][:weather_at_eta]).to be_a String
      expect(response_body[:data][:attributes][:weather_at_eta]).to eq ""
    end
  end
end