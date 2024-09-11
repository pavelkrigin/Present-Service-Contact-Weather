//
//  AppDelegate.swift
//  Present Service Contact Weather
//
//  Created by Pavel Krigin on 11.09.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let navigationController: UINavigationController
    let router: CityWeatherRouter
    
    init() {
        navigationController = UINavigationController()
        router = CityWeatherRouter(navigationController: navigationController)
        super.init()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        let city = City(id: 1, name: "New York", temperature: 25.0)
        router.presentCityWeatherViewController(for: city)
                
                return true
            }
        }


