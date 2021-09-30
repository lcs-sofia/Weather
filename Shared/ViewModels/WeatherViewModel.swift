//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {
    
    // Creating an empty array to store history of weather predictions
    @Published var predictions: [Prediction] = []
    
    // Get a prediction and save that prediction
    func provideWeatherPrediction() -> Prediction  {
        
        // Use the static function right from the WeatherPredictionGenerator type (no instance required!)
        let currentPrediction = WeatherPredictionGenerator.getPrediction()

        // Save the prediction to the history
        predictions.append(currentPrediction)
        
        // Give the response back
        return currentPrediction
        
    }
}
