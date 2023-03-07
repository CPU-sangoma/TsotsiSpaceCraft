//
//  MainViewModel.swift
//  TsotsiWeatherApp
//
//  Created by Lesego Mogorosi on 2023/03/07.
//

import Foundation



class MainViewModel {
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<WeatherResponse> = Observable(nil)
    var dataSource: WeatherResponse? 
    
    func numberOfSection() -> Int {
        return 1
    }
    
    func numberOfRows(in section:Int) -> Int{
        return self.dataSource?.forecasts.count ?? 0
    }
    
    func getWeatherData(){
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true
            ApiCaller.shared.getWeatherData{ [weak self] results in
                self?.isLoading.value = false
                
                switch results {
                case .success(let movies):
                    print(movies)
                    self?.dataSource = movies
                case .failure(let error):
                    print(error)
                }
            }
        }
}
