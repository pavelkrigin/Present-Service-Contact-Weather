//
//  CitiesListPresenter.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class CitiesListPresenter {
    let interactor: CitiesListInteractor
    let view: CitiesListView
    
    init(interactor: CitiesListInteractor, view: CitiesListView) {
        self.interactor = interactor
        self.view = view
    }
    
    func fetchCities() {
        interactor.fetchCities().then { [weak self] cities in
            self?.view.display(cities: cities)
        }
    }
}
