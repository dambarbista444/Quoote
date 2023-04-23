//
//  HealthAndFitnessView.swift
//  Evlla
//
//  Created by Dambar Bista on 4/20/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct HealthAndFitnessView: View {
    @State var showModal = false
    
    var healthAndFitness = HealthAndFitness()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.green)
                .cornerRadius(15)
                .frame(width: .infinity, height: 200)
                .padding(.horizontal, 20)
            
            HStack {
                Text("Health & Fitness")
                    .font(.title)
                    .fontWeight(.medium)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            .fullScreenCover(isPresented: $showModal, content: {
                ForEach(healthAndFitness.catagories, id: \.self) { catagory in
                    QuotesView(data: catagory.quotes, name: catagory.name)
                }
            })
        }
        .onTapGesture {
            showModal.toggle()
        }
    }
}

struct HealthAndFitnessView_Previews: PreviewProvider {
    static var previews: some View {
        HealthAndFitnessView()
    }
}
