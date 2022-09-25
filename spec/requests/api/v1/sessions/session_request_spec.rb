require 'rails_helper'

describe 'Session API Endpoint' do
  describe 'Happy Path' do
    it 'can create a Session and render a response with status 200 if passed valid information', :vcr do
      create_body = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(create_body)

      login_body = { "email": "whatever@example.com", "password": "password" }

      post api_v1_sessions_path(login_body)

      expect(response.status).to eq 200

      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to include(:data)

      expect(response_body[:data]).to be_a Hash
      expect(response_body[:data].keys.count).to eq 3
      expect(response_body[:data].keys).to include(:id, :type, :attributes)

      expect(response_body[:data][:id]).to be_a String
      expect(response_body[:data][:id]).to eq User.last.id.to_s

      expect(response_body[:data][:type]).to be_a String
      expect(response_body[:data][:type]).to eq 'users'

      expect(response_body[:data][:attributes]).to be_a Hash
      expect(response_body[:data][:attributes].keys.count).to eq 2
      expect(response_body[:data][:attributes].keys).to include(:email, :api_key)

      expect(response_body[:data][:attributes][:email]).to be_a String
      expect(response_body[:data][:attributes][:email]).to eq User.last.email

      expect(response_body[:data][:attributes][:api_key]).to be_a String
      expect(response_body[:data][:attributes][:api_key]).to eq User.last.api_key
    end
  end

  describe 'Sad Path' do
    it 'renders an error with status 401 if invalid credentials are used' do
      create_body = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(create_body)

      login_body = { "email": "whatever@example.com", "password": "wrong password" }

      post api_v1_sessions_path(login_body)

      expect(response.status).to eq 401
      
      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to include(:description)

      expect(response_body[:description]).to be_a String
      expect(response_body[:description]).to eq "Error: Invalid credentials."
    end
  end
end