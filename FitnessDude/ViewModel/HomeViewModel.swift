//
//  HomeViewModel.swift
//  FitnessDude
//
//  Created by Nitin on 11/02/25.
//

import Foundation
import SwiftUI

class HomeViewModel : ObservableObject {
    
    @State var calories : Int = 123
    @State var active : Int = 52
    @State var stand : Int = 8
    
    var mockActivity  :[ActivityModel] = [
        ActivityModel(id: 0, title: "Today Steps", subtitle: "Goal 22,000", image: "figure.walk", tintColor: .green, amount: "1241"),
        ActivityModel(id: 1, title: "Today Steps", subtitle: "Goal 2,000", image: "figure.walk", tintColor: .red, amount: "6623"),
        ActivityModel(id: 2, title: "Today Steps", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .cyan, amount: "76235"),
        ActivityModel(id: 3, title: "Today Steps", subtitle: "Goal 9,000", image: "figure.walk", tintColor: .orange, amount: "83211")
    ]
    
    var mockWorkout: [WorkoutModel] = [
        WorkoutModel(id: 0, title: "Running", image: "figure.walk", tintColor: .green, duration: "23 min", date: "Aug 3", calories: "522 kcal"),
        WorkoutModel(id: 1, title: "Strength Training", image: "figure.run", tintColor: .red, duration: "76 min", date: "Oct 3", calories: "122 kcal"),
        WorkoutModel(id: 2, title: "Walking", image: "figure.walk", tintColor: .brown, duration: "39 min", date: "Aug 3", calories: "522 kcal"),
        WorkoutModel(id: 3, title: "Dancing", image: "figure.walk", tintColor: .purple, duration: "43 min", date: "Aug 8", calories: "522 kcal")
    ]
    
    
    
    
    
    
}
