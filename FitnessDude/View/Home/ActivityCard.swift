//
//  ActivityCard.swift
//  FitnessDude
//
//  Created by Nitin on 10/02/25.
//

import SwiftUI

struct ActivityCard: View {
    var Activity : ActivityModel
    
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading,spacing: 8){
                        Text(Activity.title)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .font(.title3)
                            .bold()
                        Text(Activity.subtitle)
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: Activity.image)
                        .foregroundStyle(Activity.tintColor)
                }
                
                Text("\(Activity.amount)")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(Activity: ActivityModel(id: 0, title: "Today Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "8221"))
}
