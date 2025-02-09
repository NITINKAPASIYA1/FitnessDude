//
//  ActivityCard.swift
//  FitnessDude
//
//  Created by Nitin on 10/02/25.
//

import SwiftUI

struct ActivityCard: View {
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading,spacing: 8){
                        Text("Today Steps")
                            .font(.title3)
                            .bold()
                        Text("Goal : 10000")
                    }
                    Spacer()
                    Image(systemName: "figure.walk")
                        .foregroundStyle(.green)
                }
                
                Text("16121")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard()
}
