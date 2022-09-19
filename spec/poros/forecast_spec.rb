require "rails_helper"

RSpec.describe Forecast do
  it "exists" do
    attrs = {
      "lat": 35.6531,
      "lon": -97.4815,
      "timezone": "America/Chicago",
      "timezone_offset": -18000,
      "current": {
          "dt": 1663457814,
          "sunrise": 1663416850,
          "sunset": 1663461289,
          "temp": 91.8,
          "feels_like": 94.71,
          "pressure": 1011,
          "humidity": 43,
          "dew_point": 66.11,
          "uvi": 0.15,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 18.41,
          "wind_deg": 170,
          "wind_gust": 27.63,
          "weather": [
              {
                  "id": 800,
                  "main": "Clear",
                  "description": "clear sky",
                  "icon": "01d"
              }
          ]
      },
      "minutely": [
          {
              "dt": 1663457820,
              "precipitation": 0
          },
          {
              "dt": 1663457880,
              "precipitation": 0
          },
          {
              "dt": 1663457940,
              "precipitation": 0
          },
          {
              "dt": 1663458000,
              "precipitation": 0
          },
          {
              "dt": 1663458060,
              "precipitation": 0
          },
          {
              "dt": 1663458120,
              "precipitation": 0
          },
          {
              "dt": 1663458180,
              "precipitation": 0
          },
          {
              "dt": 1663458240,
              "precipitation": 0
          },
          {
              "dt": 1663458300,
              "precipitation": 0
          },
          {
              "dt": 1663458360,
              "precipitation": 0
          },
          {
              "dt": 1663458420,
              "precipitation": 0
          },
          {
              "dt": 1663458480,
              "precipitation": 0
          },
          {
              "dt": 1663458540,
              "precipitation": 0
          },
          {
              "dt": 1663458600,
              "precipitation": 0
          },
          {
              "dt": 1663458660,
              "precipitation": 0
          },
          {
              "dt": 1663458720,
              "precipitation": 0
          },
          {
              "dt": 1663458780,
              "precipitation": 0
          },
          {
              "dt": 1663458840,
              "precipitation": 0
          },
          {
              "dt": 1663458900,
              "precipitation": 0
          },
          {
              "dt": 1663458960,
              "precipitation": 0
          },
          {
              "dt": 1663459020,
              "precipitation": 0
          },
          {
              "dt": 1663459080,
              "precipitation": 0
          },
          {
              "dt": 1663459140,
              "precipitation": 0
          },
          {
              "dt": 1663459200,
              "precipitation": 0
          },
          {
              "dt": 1663459260,
              "precipitation": 0
          },
          {
              "dt": 1663459320,
              "precipitation": 0
          },
          {
              "dt": 1663459380,
              "precipitation": 0
          },
          {
              "dt": 1663459440,
              "precipitation": 0
          },
          {
              "dt": 1663459500,
              "precipitation": 0
          },
          {
              "dt": 1663459560,
              "precipitation": 0
          },
          {
              "dt": 1663459620,
              "precipitation": 0
          },
          {
              "dt": 1663459680,
              "precipitation": 0
          },
          {
              "dt": 1663459740,
              "precipitation": 0
          },
          {
              "dt": 1663459800,
              "precipitation": 0
          },
          {
              "dt": 1663459860,
              "precipitation": 0
          },
          {
              "dt": 1663459920,
              "precipitation": 0
          },
          {
              "dt": 1663459980,
              "precipitation": 0
          },
          {
              "dt": 1663460040,
              "precipitation": 0
          },
          {
              "dt": 1663460100,
              "precipitation": 0
          },
          {
              "dt": 1663460160,
              "precipitation": 0
          },
          {
              "dt": 1663460220,
              "precipitation": 0
          },
          {
              "dt": 1663460280,
              "precipitation": 0
          },
          {
              "dt": 1663460340,
              "precipitation": 0
          },
          {
              "dt": 1663460400,
              "precipitation": 0
          },
          {
              "dt": 1663460460,
              "precipitation": 0
          },
          {
              "dt": 1663460520,
              "precipitation": 0
          },
          {
              "dt": 1663460580,
              "precipitation": 0
          },
          {
              "dt": 1663460640,
              "precipitation": 0
          },
          {
              "dt": 1663460700,
              "precipitation": 0
          },
          {
              "dt": 1663460760,
              "precipitation": 0
          },
          {
              "dt": 1663460820,
              "precipitation": 0
          },
          {
              "dt": 1663460880,
              "precipitation": 0
          },
          {
              "dt": 1663460940,
              "precipitation": 0
          },
          {
              "dt": 1663461000,
              "precipitation": 0
          },
          {
              "dt": 1663461060,
              "precipitation": 0
          },
          {
              "dt": 1663461120,
              "precipitation": 0
          },
          {
              "dt": 1663461180,
              "precipitation": 0
          },
          {
              "dt": 1663461240,
              "precipitation": 0
          },
          {
              "dt": 1663461300,
              "precipitation": 0
          },
          {
              "dt": 1663461360,
              "precipitation": 0
          },
          {
              "dt": 1663461420,
              "precipitation": 0
          }
      ],
      "hourly": [
          {
              "dt": 1663455600,
              "temp": 92.43,
              "feels_like": 94.46,
              "pressure": 1010,
              "humidity": 40,
              "dew_point": 64.6,
              "uvi": 0.85,
              "clouds": 2,
              "visibility": 10000,
              "wind_speed": 19.6,
              "wind_deg": 187,
              "wind_gust": 20.98,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663459200,
              "temp": 91.8,
              "feels_like": 94.71,
              "pressure": 1011,
              "humidity": 43,
              "dew_point": 66.11,
              "uvi": 0.15,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 18.05,
              "wind_deg": 183,
              "wind_gust": 25.48,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663462800,
              "temp": 91.11,
              "feels_like": 92.73,
              "pressure": 1011,
              "humidity": 41,
              "dew_point": 64.15,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 17.45,
              "wind_deg": 176,
              "wind_gust": 30.49,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663466400,
              "temp": 89.53,
              "feels_like": 90.32,
              "pressure": 1011,
              "humidity": 41,
              "dew_point": 62.73,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.75,
              "wind_deg": 173,
              "wind_gust": 30.8,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0.05
          },
          {
              "dt": 1663470000,
              "temp": 87.39,
              "feels_like": 87.12,
              "pressure": 1010,
              "humidity": 40,
              "dew_point": 60.12,
              "uvi": 0,
              "clouds": 4,
              "visibility": 10000,
              "wind_speed": 15.79,
              "wind_deg": 171,
              "wind_gust": 32.93,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0.08
          },
          {
              "dt": 1663473600,
              "temp": 84.83,
              "feels_like": 84.7,
              "pressure": 1011,
              "humidity": 43,
              "dew_point": 59.86,
              "uvi": 0,
              "clouds": 3,
              "visibility": 10000,
              "wind_speed": 17.6,
              "wind_deg": 173,
              "wind_gust": 34.99,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0.12
          },
          {
              "dt": 1663477200,
              "temp": 81.52,
              "feels_like": 82.13,
              "pressure": 1011,
              "humidity": 49,
              "dew_point": 60.66,
              "uvi": 0,
              "clouds": 4,
              "visibility": 10000,
              "wind_speed": 18.88,
              "wind_deg": 172,
              "wind_gust": 37,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0.12
          },
          {
              "dt": 1663480800,
              "temp": 80.02,
              "feels_like": 81.21,
              "pressure": 1011,
              "humidity": 54,
              "dew_point": 62.31,
              "uvi": 0,
              "clouds": 3,
              "visibility": 10000,
              "wind_speed": 20.85,
              "wind_deg": 180,
              "wind_gust": 38.32,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0.08
          },
          {
              "dt": 1663484400,
              "temp": 79.18,
              "feels_like": 79.18,
              "pressure": 1012,
              "humidity": 59,
              "dew_point": 63.63,
              "uvi": 0,
              "clouds": 3,
              "visibility": 10000,
              "wind_speed": 20.74,
              "wind_deg": 190,
              "wind_gust": 39.12,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663488000,
              "temp": 78.46,
              "feels_like": 78.93,
              "pressure": 1011,
              "humidity": 62,
              "dew_point": 64.45,
              "uvi": 0,
              "clouds": 2,
              "visibility": 10000,
              "wind_speed": 19.64,
              "wind_deg": 187,
              "wind_gust": 38.14,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663491600,
              "temp": 77.67,
              "feels_like": 78.19,
              "pressure": 1012,
              "humidity": 65,
              "dew_point": 65.16,
              "uvi": 0,
              "clouds": 2,
              "visibility": 10000,
              "wind_speed": 18.43,
              "wind_deg": 189,
              "wind_gust": 36.89,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663495200,
              "temp": 76.62,
              "feels_like": 77.18,
              "pressure": 1012,
              "humidity": 68,
              "dew_point": 65.62,
              "uvi": 0,
              "clouds": 1,
              "visibility": 10000,
              "wind_speed": 17.43,
              "wind_deg": 189,
              "wind_gust": 35.9,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663498800,
              "temp": 75.81,
              "feels_like": 76.42,
              "pressure": 1012,
              "humidity": 71,
              "dew_point": 66,
              "uvi": 0,
              "clouds": 1,
              "visibility": 10000,
              "wind_speed": 16.42,
              "wind_deg": 192,
              "wind_gust": 35.39,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663502400,
              "temp": 75.31,
              "feels_like": 75.97,
              "pressure": 1012,
              "humidity": 73,
              "dew_point": 66.06,
              "uvi": 0,
              "clouds": 1,
              "visibility": 10000,
              "wind_speed": 15.26,
              "wind_deg": 193,
              "wind_gust": 34.07,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663506000,
              "temp": 75.51,
              "feels_like": 76.19,
              "pressure": 1013,
              "humidity": 73,
              "dew_point": 66.38,
              "uvi": 0.16,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.52,
              "wind_deg": 190,
              "wind_gust": 31.54,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663509600,
              "temp": 78.96,
              "feels_like": 78.96,
              "pressure": 1014,
              "humidity": 65,
              "dew_point": 66.6,
              "uvi": 0.85,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 17.29,
              "wind_deg": 196,
              "wind_gust": 28.81,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663513200,
              "temp": 83.84,
              "feels_like": 86.02,
              "pressure": 1014,
              "humidity": 55,
              "dew_point": 65.97,
              "uvi": 2.33,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 18.16,
              "wind_deg": 207,
              "wind_gust": 24.65,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663516800,
              "temp": 88.41,
              "feels_like": 89.98,
              "pressure": 1014,
              "humidity": 45,
              "dew_point": 65.08,
              "uvi": 4.4,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 17.85,
              "wind_deg": 214,
              "wind_gust": 21.59,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663520400,
              "temp": 92.12,
              "feels_like": 93.56,
              "pressure": 1013,
              "humidity": 39,
              "dew_point": 63.81,
              "uvi": 6.45,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 16.8,
              "wind_deg": 216,
              "wind_gust": 19.44,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663524000,
              "temp": 94.73,
              "feels_like": 95.61,
              "pressure": 1013,
              "humidity": 34,
              "dew_point": 62.85,
              "uvi": 7.7,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.79,
              "wind_deg": 215,
              "wind_gust": 17.31,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663527600,
              "temp": 96.73,
              "feels_like": 97.43,
              "pressure": 1012,
              "humidity": 31,
              "dew_point": 61.45,
              "uvi": 7.72,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.26,
              "wind_deg": 212,
              "wind_gust": 15.97,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663531200,
              "temp": 97.84,
              "feels_like": 98.26,
              "pressure": 1012,
              "humidity": 29,
              "dew_point": 60.24,
              "uvi": 6.46,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.99,
              "wind_deg": 208,
              "wind_gust": 15.21,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663534800,
              "temp": 98.13,
              "feels_like": 97.77,
              "pressure": 1011,
              "humidity": 27,
              "dew_point": 59.27,
              "uvi": 4.42,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.99,
              "wind_deg": 201,
              "wind_gust": 14.32,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663538400,
              "temp": 97.59,
              "feels_like": 96.98,
              "pressure": 1011,
              "humidity": 27,
              "dew_point": 58.44,
              "uvi": 2.34,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.59,
              "wind_deg": 191,
              "wind_gust": 14.34,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663542000,
              "temp": 96.03,
              "feels_like": 95.13,
              "pressure": 1011,
              "humidity": 28,
              "dew_point": 58.19,
              "uvi": 0.85,
              "clouds": 3,
              "visibility": 10000,
              "wind_speed": 16.11,
              "wind_deg": 181,
              "wind_gust": 15.23,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663545600,
              "temp": 92.48,
              "feels_like": 91.26,
              "pressure": 1011,
              "humidity": 31,
              "dew_point": 58.12,
              "uvi": 0.15,
              "clouds": 4,
              "visibility": 10000,
              "wind_speed": 14.67,
              "wind_deg": 175,
              "wind_gust": 21.97,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663549200,
              "temp": 87.58,
              "feels_like": 86.43,
              "pressure": 1012,
              "humidity": 36,
              "dew_point": 57.47,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 12.44,
              "wind_deg": 175,
              "wind_gust": 25.01,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663552800,
              "temp": 84.49,
              "feels_like": 83.79,
              "pressure": 1012,
              "humidity": 40,
              "dew_point": 57.6,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 12.5,
              "wind_deg": 181,
              "wind_gust": 27.94,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663556400,
              "temp": 83.97,
              "feels_like": 83.26,
              "pressure": 1013,
              "humidity": 40,
              "dew_point": 57.29,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 16.53,
              "wind_deg": 184,
              "wind_gust": 32.44,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663560000,
              "temp": 82.85,
              "feels_like": 82.33,
              "pressure": 1013,
              "humidity": 41,
              "dew_point": 56.88,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 17,
              "wind_deg": 191,
              "wind_gust": 32.95,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663563600,
              "temp": 81.73,
              "feels_like": 81.46,
              "pressure": 1013,
              "humidity": 42,
              "dew_point": 56.84,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.99,
              "wind_deg": 192,
              "wind_gust": 32.5,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663567200,
              "temp": 80.6,
              "feels_like": 80.83,
              "pressure": 1014,
              "humidity": 45,
              "dew_point": 57.25,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.59,
              "wind_deg": 195,
              "wind_gust": 33.24,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663570800,
              "temp": 79.54,
              "feels_like": 79.54,
              "pressure": 1014,
              "humidity": 47,
              "dew_point": 57.83,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 15.5,
              "wind_deg": 199,
              "wind_gust": 33.15,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663574400,
              "temp": 78.44,
              "feels_like": 78.3,
              "pressure": 1014,
              "humidity": 49,
              "dew_point": 58.23,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.79,
              "wind_deg": 202,
              "wind_gust": 32.77,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663578000,
              "temp": 77.76,
              "feels_like": 77.68,
              "pressure": 1014,
              "humidity": 52,
              "dew_point": 58.71,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.2,
              "wind_deg": 205,
              "wind_gust": 32.77,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663581600,
              "temp": 76.73,
              "feels_like": 76.64,
              "pressure": 1014,
              "humidity": 54,
              "dew_point": 59.07,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 13.09,
              "wind_deg": 204,
              "wind_gust": 31.54,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663585200,
              "temp": 75.67,
              "feels_like": 75.61,
              "pressure": 1014,
              "humidity": 57,
              "dew_point": 59.32,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 11.74,
              "wind_deg": 207,
              "wind_gust": 29.68,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663588800,
              "temp": 74.48,
              "feels_like": 74.41,
              "pressure": 1015,
              "humidity": 59,
              "dew_point": 59.49,
              "uvi": 0,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 10.25,
              "wind_deg": 205,
              "wind_gust": 27.13,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01n"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663592400,
              "temp": 75.22,
              "feels_like": 75.22,
              "pressure": 1015,
              "humidity": 59,
              "dew_point": 59.94,
              "uvi": 0.15,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 9.64,
              "wind_deg": 200,
              "wind_gust": 26.51,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663596000,
              "temp": 81.07,
              "feels_like": 81.68,
              "pressure": 1015,
              "humidity": 49,
              "dew_point": 60.53,
              "uvi": 0.83,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 12.41,
              "wind_deg": 205,
              "wind_gust": 24.45,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663599600,
              "temp": 86.85,
              "feels_like": 86.68,
              "pressure": 1015,
              "humidity": 41,
              "dew_point": 60.4,
              "uvi": 2.31,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.2,
              "wind_deg": 211,
              "wind_gust": 20.94,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663603200,
              "temp": 90.68,
              "feels_like": 90.36,
              "pressure": 1015,
              "humidity": 36,
              "dew_point": 60.31,
              "uvi": 4.4,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 14.58,
              "wind_deg": 219,
              "wind_gust": 16.55,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663606800,
              "temp": 93.6,
              "feels_like": 93.49,
              "pressure": 1014,
              "humidity": 33,
              "dew_point": 60.39,
              "uvi": 6.45,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 12.82,
              "wind_deg": 220,
              "wind_gust": 12.41,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663610400,
              "temp": 96.42,
              "feels_like": 95.68,
              "pressure": 1014,
              "humidity": 28,
              "dew_point": 58.68,
              "uvi": 7.71,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 10.63,
              "wind_deg": 214,
              "wind_gust": 11.23,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663614000,
              "temp": 98.15,
              "feels_like": 96.94,
              "pressure": 1013,
              "humidity": 25,
              "dew_point": 56.5,
              "uvi": 7.76,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 10.16,
              "wind_deg": 208,
              "wind_gust": 11.72,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663617600,
              "temp": 99.14,
              "feels_like": 97.5,
              "pressure": 1012,
              "humidity": 23,
              "dew_point": 55.63,
              "uvi": 6.49,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 10.22,
              "wind_deg": 207,
              "wind_gust": 12.08,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663621200,
              "temp": 99.5,
              "feels_like": 98.01,
              "pressure": 1011,
              "humidity": 23,
              "dew_point": 55.18,
              "uvi": 4.42,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 10.65,
              "wind_deg": 202,
              "wind_gust": 12.33,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          },
          {
              "dt": 1663624800,
              "temp": 98.94,
              "feels_like": 97.23,
              "pressure": 1010,
              "humidity": 23,
              "dew_point": 55.13,
              "uvi": 2.32,
              "clouds": 0,
              "visibility": 10000,
              "wind_speed": 12.1,
              "wind_deg": 194,
              "wind_gust": 12.93,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "pop": 0
          }
      ],
      "daily": [
          {
              "dt": 1663437600,
              "sunrise": 1663416850,
              "sunset": 1663461289,
              "moonrise": 0,
              "moonset": 1663443540,
              "moon_phase": 0.75,
              "temp": {
                  "day": 93.56,
                  "min": 71.65,
                  "max": 96.04,
                  "night": 84.83,
                  "eve": 91.8,
                  "morn": 71.65
              },
              "feels_like": {
                  "day": 94.62,
                  "night": 84.7,
                  "eve": 94.71,
                  "morn": 72.23
              },
              "pressure": 1012,
              "humidity": 36,
              "dew_point": 63.1,
              "wind_speed": 19.6,
              "wind_deg": 187,
              "wind_gust": 36.6,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0.12,
              "uvi": 7.5
          },
          {
              "dt": 1663524000,
              "sunrise": 1663503294,
              "sunset": 1663547600,
              "moonrise": 1663477800,
              "moonset": 1663533180,
              "moon_phase": 0.77,
              "temp": {
                  "day": 94.73,
                  "min": 75.31,
                  "max": 98.13,
                  "night": 82.85,
                  "eve": 92.48,
                  "morn": 75.31
              },
              "feels_like": {
                  "day": 95.61,
                  "night": 82.33,
                  "eve": 91.26,
                  "morn": 75.97
              },
              "pressure": 1013,
              "humidity": 34,
              "dew_point": 62.85,
              "wind_speed": 20.85,
              "wind_deg": 180,
              "wind_gust": 39.12,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0.12,
              "uvi": 7.72
          },
          {
              "dt": 1663610400,
              "sunrise": 1663589739,
              "sunset": 1663633911,
              "moonrise": 1663567200,
              "moonset": 1663622460,
              "moon_phase": 0.8,
              "temp": {
                  "day": 96.42,
                  "min": 74.48,
                  "max": 99.5,
                  "night": 82.63,
                  "eve": 92.98,
                  "morn": 74.48
              },
              "feels_like": {
                  "day": 95.68,
                  "night": 82.13,
                  "eve": 91.33,
                  "morn": 74.41
              },
              "pressure": 1014,
              "humidity": 28,
              "dew_point": 58.68,
              "wind_speed": 15.99,
              "wind_deg": 192,
              "wind_gust": 33.24,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 7.76
          },
          {
              "dt": 1663696800,
              "sunrise": 1663676184,
              "sunset": 1663720222,
              "moonrise": 1663656900,
              "moonset": 1663711440,
              "moon_phase": 0.83,
              "temp": {
                  "day": 96.96,
                  "min": 75.15,
                  "max": 99.61,
                  "night": 83.48,
                  "eve": 92.79,
                  "morn": 75.15
              },
              "feels_like": {
                  "day": 95.31,
                  "night": 82.24,
                  "eve": 90.54,
                  "morn": 75.04
              },
              "pressure": 1013,
              "humidity": 25,
              "dew_point": 55.54,
              "wind_speed": 14.85,
              "wind_deg": 201,
              "wind_gust": 33.42,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 7.68
          },
          {
              "dt": 1663783200,
              "sunrise": 1663762629,
              "sunset": 1663806533,
              "moonrise": 1663746840,
              "moonset": 1663800060,
              "moon_phase": 0.86,
              "temp": {
                  "day": 97.03,
                  "min": 76.05,
                  "max": 100.31,
                  "night": 83.01,
                  "eve": 93.67,
                  "morn": 76.05
              },
              "feels_like": {
                  "day": 95.41,
                  "night": 82.08,
                  "eve": 91.36,
                  "morn": 75.65
              },
              "pressure": 1012,
              "humidity": 25,
              "dew_point": 55.92,
              "wind_speed": 14.61,
              "wind_deg": 207,
              "wind_gust": 33.76,
              "weather": [
                  {
                      "id": 801,
                      "main": "Clouds",
                      "description": "few clouds",
                      "icon": "02d"
                  }
              ],
              "clouds": 12,
              "pop": 0,
              "uvi": 7.72
          },
          {
              "dt": 1663869600,
              "sunrise": 1663849074,
              "sunset": 1663892844,
              "moonrise": 1663836840,
              "moonset": 1663888380,
              "moon_phase": 0.9,
              "temp": {
                  "day": 98.94,
                  "min": 76.26,
                  "max": 101.16,
                  "night": 84.9,
                  "eve": 93.97,
                  "morn": 76.41
              },
              "feels_like": {
                  "day": 96.13,
                  "night": 83.01,
                  "eve": 90.97,
                  "morn": 75.87
              },
              "pressure": 1011,
              "humidity": 20,
              "dew_point": 51.55,
              "wind_speed": 14.72,
              "wind_deg": 179,
              "wind_gust": 33.17,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 1,
              "pop": 0,
              "uvi": 8
          },
          {
              "dt": 1663956000,
              "sunrise": 1663935519,
              "sunset": 1663979155,
              "moonrise": 1663926900,
              "moonset": 1663976520,
              "moon_phase": 0.93,
              "temp": {
                  "day": 97.07,
                  "min": 73.81,
                  "max": 99.32,
                  "night": 83.35,
                  "eve": 92.61,
                  "morn": 73.81
              },
              "feels_like": {
                  "day": 93.34,
                  "night": 81.39,
                  "eve": 88.92,
                  "morn": 72.82
              },
              "pressure": 1009,
              "humidity": 18,
              "dew_point": 46.56,
              "wind_speed": 21.23,
              "wind_deg": 219,
              "wind_gust": 38.88,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 8
          },
          {
              "dt": 1664042400,
              "sunrise": 1664021964,
              "sunset": 1664065467,
              "moonrise": 1664016960,
              "moonset": 1664064540,
              "moon_phase": 0.96,
              "temp": {
                  "day": 87.31,
                  "min": 71.91,
                  "max": 95.11,
                  "night": 81.91,
                  "eve": 90.12,
                  "morn": 72.46
              },
              "feels_like": {
                  "day": 85.35,
                  "night": 81.16,
                  "eve": 87.46,
                  "morn": 71.82
              },
              "pressure": 1015,
              "humidity": 32,
              "dew_point": 54.25,
              "wind_speed": 14.29,
              "wind_deg": 213,
              "wind_gust": 22.95,
              "weather": [
                  {
                      "id": 803,
                      "main": "Clouds",
                      "description": "broken clouds",
                      "icon": "04d"
                  }
              ],
              "clouds": 73,
              "pop": 0,
              "uvi": 8
          }
      ]
    }

    forecast = Forecast.new(attrs)

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