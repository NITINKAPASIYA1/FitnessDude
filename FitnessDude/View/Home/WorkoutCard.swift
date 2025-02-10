//
//  WorkoutCard.swift
//  FitnessDude
//
//  Created by Nitin on 11/02/25.
//

import SwiftUI

struct WorkoutCard: View {
    var workout : WorkoutModel
   
    
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                
            VStack(spacing: 16){
                HStack{
                    
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Text(workout.duration)
                }
                
                HStack{
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: WorkoutModel(id: 0, title: "Running", image: "figure.walk", tintColor: .green, duration: "23 min", date: "Aug 3", calories: "522 kcal"))
}
