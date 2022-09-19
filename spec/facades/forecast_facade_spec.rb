require 'rails_helper'

RSpec.describe 'ForecastFacade', :vcr do
  it 'makes a call and returns a Forecast object' do
    location_data = {
          "info": {
              "statuscode": 0,
              "copyright": {
                  "text": "© 2022 MapQuest, Inc.",
                  "imageUrl": "http://api.mqcdn.com/res/mqlogo.gif",
                  "imageAltText": "© 2022 MapQuest, Inc."
              },
              "messages": []
          },
          "options": {
              "maxResults": -1,
              "thumbMaps": true,
              "ignoreLatLngInput": false
          },
          "results": [
              {
                  "providedLocation": {
                      "location": "Edmond, OK"
                  },
                  "locations": [
                      {
                          "street": "",
                          "adminArea6": "",
                          "adminArea6Type": "Neighborhood",
                          "adminArea5": "Edmond",
                          "adminArea5Type": "City",
                          "adminArea4": "Oklahoma County",
                          "adminArea4Type": "County",
                          "adminArea3": "OK",
                          "adminArea3Type": "State",
                          "adminArea1": "US",
                          "adminArea1Type": "Country",
                          "postalCode": "",
                          "geocodeQualityCode": "A5XAX",
                          "geocodeQuality": "CITY",
                          "dragPoint": false,
                          "sideOfStreet": "N",
                          "linkId": "282035868",
                          "unknownInput": "",
                          "type": "s",
                          "latLng": {
                              "lat": 35.65314,
                              "lng": -97.481511
                          },
                          "displayLatLng": {
                              "lat": 35.65314,
                              "lng": -97.481511
                          },
                          "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rPIVuFRHVjQzMy7cqGaZ8yNKzqBCdWRJ&type=map&size=225,160&locations=35.65314,-97.481511|marker-sm-50318A-1&scalebar=true&zoom=12&rand=-349695310"
                      }
                  ]
              }
          ]
    }

    location = Location.new(location_data)

    forecast = ForecastFacade.get_forecast(location)

    expect(forecast).to be_a Forecast
    expect(forecast.current_weather).to be_a Hash
    expect(forecast.hourly_weather).to be_a Array
    expect(forecast.daily_weather).to be_a Array

    # Want data for next 8 hours of weather
    expect(forecast.hourly_weather.count).to eq 8
    forecast.hourly_weather.each do |hour|
      expect(hour).to be_a Hash
      expect(hour[:time]).to be_a String
      expect(hour[:temperature]).to be_a Float
      expect(hour[:conditions]).to be_a String
      expect(hour[:icon]).to be_a String
    end

    # Want data for the next 5 days of weather
    expect(forecast.daily_weather.count).to eq 5
    forecast.daily_weather.each do |day|
      expect(day).to be_a Hash
      expect(day[:date]).to be_a String
      expect(day[:sunrise]).to be_a DateTime
      expect(day[:sunset]).to be_a DateTime
      expect(day[:max_temp]).to be_a Float
      expect(day[:min_temp]).to be_a Float
      expect(day[:conditions]).to be_a String
      expect(day[:icon]).to be_a String
    end
  end
end