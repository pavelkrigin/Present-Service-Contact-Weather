//
//  CitiesListInteractor.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class CitiesListInteractor {
    let apiService: APIService
    
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    func fetchCities() -> Promise<[City]> {
        return apiService.fetchCities()
    }
}
