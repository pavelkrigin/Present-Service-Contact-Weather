//
//  CityWeatherViewController.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import Foundation

class CityWeatherViewController: UIViewController {
    let city: City
    let presenter: CityWeatherPresenter
    
    init(city: City, presenter: CityWeatherPresenter) {
        self.city = city
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.fetchWeather(for: city)
    }
    
    func display(weather: Weather) {
        // отображаем информацию о погоде в городе
    }
}

class CityWeatherPresenter {
    let interactor: WeatherInteractor
    let view: CityWeatherViewController
    
    init(interactor: WeatherInteractor, view: CityWeatherViewController) {
        self.interactor = interactor
        self.view = view
    }
    
    func fetchWeather(for city: City) {
        interactor.fetchWeather(for: city).then { [weak self] weather in
            self?.view.display(weather: weather)
        }
    }
}
