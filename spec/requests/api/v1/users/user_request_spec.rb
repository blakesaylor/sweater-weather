require 'rails_helper'

describe 'User API Endpoint' do
  describe 'Happy Path' do
    it 'can create a User and issue a response with status 201 if passed valid information', :vcr do
      input_body = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(input_body)

      expect(response.status).to eq 201
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

      expect(response_body[:data][:attributes][:email]).to eq User.last.email
      expect(response_body[:data][:attributes][:api_key]).to eq User.last.api_key
    end
  end

  describe 'Sad Path' do
    it 'renders an error with status 409 if a user already exists with an email address' do
      input_body_1 = { "email": "whatever@example.com", "password": "password", "password_confirmation": "password" }
      input_body_2 = { "email": "WHatEVer@exAMPle.COM", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(input_body_1)
      post api_v1_users_path(input_body_2)

      expect(response.status).to eq 409

      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to eq [ :description ]

      expect(response_body[:description]).to be_a String
      expect(response_body[:description]).to eq "Error: A user with that email already exists."
    end

    it 'renders an error with status 400 if password and password_confirmation do not match' do
      input_body_1 = { "email": "whatever@example.com", "password": "password", "password_confirmation": "passsssssword" }

      post api_v1_users_path(input_body_1)

      expect(response.status).to eq 400

      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to eq [ :description ]

      expect(response_body[:description]).to be_a String
      expect(response_body[:description]).to eq "Error: Password and password confirmation must match."
    end

    it 'renders an error with status 400 if not all fields are filled in' do
      input_body_1 = { "email": "", "password": "password", "password_confirmation": "password" }

      post api_v1_users_path(input_body_1)

      expect(response.status).to eq 400

      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to be_a Hash
      expect(response_body.keys.count).to eq 1
      expect(response_body.keys).to eq [ :description ]

      expect(response_body[:description]).to be_a String
      expect(response_body[:description]).to eq "Error: All fields must be filled in."
    end
  end
end