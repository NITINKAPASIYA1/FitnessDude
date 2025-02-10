//
//  HomeView.swift
//  FitnessDude
//
//  Created by Nitin on 10/02/25.
//

import SwiftUI

struct HomeView: View {
   
    @StateObject var viewModel  = HomeViewModel()
        
    
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false){
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack{
                        Spacer()
                        
                        VStack(alignment: .leading){
                            VStack(alignment: .leading,spacing: 8){
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                
                                Text("\(viewModel.active)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading,spacing: 8){
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack{
                            ProgressCircleView(progress: viewModel.$calories, color: .red, goal: 200)
                            
                            ProgressCircleView(progress: viewModel.$active, color: .green, goal: 70)
                                .padding(.all,20)
                            
                            ProgressCircleView(progress: viewModel.$stand, color: .yellow, goal: 12)
                                .padding(.all,40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack{
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("Show More")
                        } label: {
                            Text("Show More")
                                .padding(.all,10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count: 2)) {
                        ForEach(viewModel.mockActivity, id:\.id) {
                            i in
                            ActivityCard(Activity: i)
                        }
                    }.padding()
                    
                    
                    HStack{
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all,10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    LazyVStack{
                        ForEach(viewModel.mockWorkout, id:\.id) {
                            workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                  
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
