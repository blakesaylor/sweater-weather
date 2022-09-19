require 'rails_helper'

describe WeatherService do
  context "class methods" do
    context "#weather_details" do
      it "returns weather data based on a search using latitude and longitude", :vcr do
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

        search = WeatherService.weather_details(location)

        expect(search).to be_a Hash
        expect(search[:lat]).to be_a Float
        expect(search[:lon]).to be_a Float
        
        # Current Weather Details to be used
        expect(search[:current][:dt]).to be_an Integer # Current Time
        expect(search[:current][:sunrise]).to be_an Integer # Sunrise Time
        expect(search[:current][:sunset]).to be_an Integer # Sunset Time
        expect(search[:current][:temp]).to be_a Numeric # Current Temperature
        expect(search[:current][:feels_like]).to be_a Numeric # Current Feels Like Temperature
        expect(search[:current][:humidity]).to be_an Numeric # Current Humidity
        expect(search[:current][:uvi]).to be_a Numeric # Current UVI
        expect(search[:current][:visibility]).to be_an Numeric # Current Visibility
        expect(search[:current][:weather][0][:description]).to be_a String # Current Weather Description
        expect(search[:current][:weather][0][:icon]).to be_a String # Current Weather Icon

        # Hourly weather to be used
        # Will want to start at search[:hourly][1] since search[:hourly][0] is the current hour
        expect(search[:hourly]).to be_an Array
        expect(search[:hourly].count).to eq 48 # Hourly weather for next 48 hours
        search[:hourly][1..8].each do |hour|
          expect(hour[:dt]).to be_an Integer  # Next hourly time
          expect(hour[:temp]).to be_a Numeric # Next hourly temperature
          expect(hour[:weather][0][:description]).to be_a String # Next hourly weather description
          expect(hour[:weather][0][:icon]).to be_a String # Next hourly weather icon
        end

        # Daily weather to be used
        # Will want to start at search[:daily][1] since search[:daily][0] is the current date
        expect(search[:daily]).to be_an Array
        expect(search[:daily].count).to eq 8
        search[:daily][1..5].each do |day|
          expect(day[:dt]).to be_an Integer
          expect(day[:sunrise]).to be_an Integer
          expect(day[:sunset]).to be_an Integer
          expect(day[:temp][:max]).to be_a Numeric
          expect(day[:temp][:min]).to be_a Numeric
          expect(day[:weather]).to be_an Array
          expect(day[:weather][0][:description]).to be_a String
          expect(day[:weather][0][:icon]).to be_a String
        end
      end
    end
  end
end