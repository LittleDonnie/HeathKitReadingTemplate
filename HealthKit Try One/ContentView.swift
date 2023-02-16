//
//  ContentView.swift
//  HealthKit Try One
//
//  Created by Donald Montgomery on 2/15/23.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    
    
    private var healthStore: HealthStore?
    
    init() {
        healthStore = HealthStore()
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        .onAppear {
            if let healthStore = healthStore {
                healthStore.requestAuthorization { success in
                
                    
                    
                    
                }
            }
        }}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
