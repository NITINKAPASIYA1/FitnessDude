//
//  HealthManager.swift
//  FitnessDude
//
//  Created by Nitin on 11/02/25.
//

import Foundation
import HealthKit

extension Date {
    
    static var startOfDay: Date {
        let calender = Calendar.current
        return calender.startOfDay(for: Date())
    }
}

class HealthManager {
    // WE use singleton as it only initialize once the instance
    
    static let shared = HealthManager()
    let healthStore = HKHealthStore()
    
    private init () {
        let calories  = HKQuantityType(.activeEnergyBurned)
        let exercise = HKQuantityType(.appleExerciseTime)
        let stand = HKCategoryType(.appleStandHour)
        
        let healthTypes:Set = [calories,exercise,stand]
        
        Task{
            do{
                try await healthStore.requestAuthorization(toShare: [], read: healthTypes)
            }catch{
                print("DEBUG: HealthKit authorization failed :\(error.localizedDescription)")
            }
        }
    }
    
    func fetchTodayCaloriesBurned(completion: @escaping(Result<Double,Error>) -> Void){
        let calories  = HKQuantityType(.activeEnergyBurned)
        let predicate = HKQuery.predicateForSamples(withStart: .startOfDay, end: Date())
        let query = HKStatisticsQuery(quantityType: calories, quantitySamplePredicate: predicate) {
            _, results,error in
            guard let quantity = results?.sumQuantity(), error == nil else {
                completion(.failure(NSError()))
                return
            }
            
            let calorieCount = quantity.doubleValue(for: .kilocalorie())
            completion(.success(calorieCount))
            
        }
        healthStore.execute(query)
    }
    
}
