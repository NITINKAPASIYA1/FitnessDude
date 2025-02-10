//
//  HomeView.swift
//  FitnessDude
//
//  Created by Nitin on 10/02/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories : Int = 123
    @State var active : Int = 52
    @State var stand : Int = 8
        
    var mockActivity = [
        ActivityModel(id: 0, title: "Today Steps", subtitle: "Goal 22,000", image: "figure.walk", tintColor: .green, amount: "1241"),
        ActivityModel(id: 1, title: "Today Steps", subtitle: "Goal 2,000", image: "figure.walk", tintColor: .red, amount: "6623"),
        ActivityModel(id: 2, title: "Today Steps", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .cyan, amount: "76235"),
        ActivityModel(id: 3, title: "Today Steps", subtitle: "Goal 9,000", image: "figure.walk", tintColor: .orange, amount: "83211")
    ]
    
    var body: some View {
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
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading,spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            Text("52 min")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading,spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            Text("8 Hours")
                                .bold()
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        ProgressCircleView(progress: $calories, color: .red, goal: 200)
                        
                        ProgressCircleView(progress: $active, color: .green, goal: 70)
                            .padding(.all,20)
                        
                        ProgressCircleView(progress: $stand, color: .yellow, goal: 12)
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
                    ForEach(mockActivity, id:\.id) {
                        i in
                        ActivityCard(Activity: i)
                    }
                }.padding()
                
            }
        }
    }
}

#Preview {
    HomeView()
}
