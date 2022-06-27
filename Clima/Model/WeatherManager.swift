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
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        
        if let url = URL(string: urlString){
            
           let session = URLSession(configuration: .default)
            
           let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
           task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
        
    }
    
}
