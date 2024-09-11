//
//  CitiesListView.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class CitiesListView: UIViewController {
    let presenter: CitiesListPresenter
    
    init(presenter: CitiesListPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.fetchCities()
    }
    
    func display(cities: [City]) {
        // display cities list
    }
}
