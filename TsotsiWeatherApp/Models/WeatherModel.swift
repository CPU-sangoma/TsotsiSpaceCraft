//
//  File.swift
//  TsotsiWeatherApp
//
//  Created by Lesego Mogorosi on 2023/03/07.
//

import Foundation



struct WeatherResponse: Codable{
    let forecasts: [WeatherObj]
    let lastUpdated: String
    let weatherStation: String
}



struct WeatherObj: Codable {
    let date: String
    let temp: Double
    let humidity: Int
    let windSpeed: Int
    let safe: Bool
}





//{
//   "forecasts":[
//      {
//         "date":"2020-11-05T22:00:00.000+0000",
//         "temp":20.0,
//         "humidity":30,
//         "windSpeed":300,
//         "safe":true
//      },
//      {
//         "date":"2020-11-06T22:00:00.000+0000",
//         "temp":40.0,
//         "humidity":10,
//         "windSpeed":300,
//         "safe":true
//      },
//      {
//         "date":"2020-11-07T22:00:00.000+0000",
//         "temp":50.0,
//         "humidity":30,
//         "windSpeed":300,
//         "safe":true
//      },
//      {
//         "date":"2020-11-08T22:00:00.000+0000",
//         "temp":90.0,
//         "humidity":60,
//         "windSpeed":6000,
//         "safe":true
//      },
//      {
//         "date":"2020-11-09T22:00:00.000+0000",
//         "temp":770.0,
//         "humidity":100,
//         "windSpeed":8900,
//         "safe":false
//      },
//      {
//         "date":"2020-11-10T22:00:00.000+0000",
//         "temp":220.0,
//         "humidity":30,
//         "windSpeed":3003,
//         "safe":false
//      }
//   ],
//   "lastUpdated": "2020-11-07T22:00:00.000+0000",
//   "weatherStation": "NASA Mars North Weather Station",
//}
