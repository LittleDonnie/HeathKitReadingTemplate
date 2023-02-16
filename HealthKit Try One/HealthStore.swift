//
//  HealthStore.swift
//  HealthKit Try One
//
//  Created by Donald Montgomery on 2/15/23.
//

import Foundation
import HealthKit


class HealthStore{
    var healthStore: HKHealthStore?
    
    init() {
        if HKHealthStore.isHealthDataAvailable(){
            healthStore = HKHealthStore()
        }
    }
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        guard let healthStore = self.healthStore else { return completion(false) }
        
        healthStore.requestAuthorization(toShare: [], read: [stepType]) { (success, error) in
            completion(success)
        }
        
    }
    
}
