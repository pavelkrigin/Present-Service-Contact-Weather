//
//  CitiesListRouter.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class CitiesListRouter {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func presentCityDetailsViewController(for city: City) {
        let presenter = CityDetailsPresenter(interactor: CityDetailsInteractor(apiService: APIService()))
        let viewController = CityDetailsView(city: city, presenter: presenter)
        navigationController.pushViewController(viewController, animated: true)
    }
}
