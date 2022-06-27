//
//  WeatherManager.swift
//  Clima
//
//  Created by Matthias Van Woensel on 27/06/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager{
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2b5e69e73314e94515edfd2d0698f6fa&units=metric"
    
    func fetchWeather(cityName: String) ->String{
        let urlString = "\(weatherURL)&q=\(cityName)"
        return urlString
    }
    
}
