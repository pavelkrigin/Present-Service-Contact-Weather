//
//  APIService.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class APIService {
    let urlSession: URLSession
    
    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }
    
    func fetchWeather(for city: City) -> Promise<Weather> {
        // implement API request to fetch weather for city
    }
    
    func fetchWeatherForecast(for city: City, days: Int) -> Promise<[Weather]> {
        // implement API request to fetch weather forecast for city
    }
}
