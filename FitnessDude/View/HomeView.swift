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
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack{
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
            }
        }
    }
}

#Preview {
    HomeView()
}
