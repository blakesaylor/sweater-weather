require "rails_helper"

RSpec.describe Location do
  it "exists" do
    attrs = {
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

    location = Location.new(attrs)

    expect(location).to be_a Location
    expect(location.latitude).to be_a Float
    expect(location.latitude).to eq 35.65314
    expect(location.longitude).to be_a Float
    expect(location.longitude).to eq -97.481511
  end
end