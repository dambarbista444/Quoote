//
//  CardView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/31/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var name: String
    var text: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack() {
                Text(text)
                    .font(.title)
                    .frame(height: geometry.size.height * 0.50)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                HStack(spacing: 20) {
                    Spacer()
                    Text(name)
                        .foregroundColor(.black)
                        .font(.headline)
              
                    Button {
                        print("saved")
                    } label: {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .scaledToFit()
                    }
                    Spacer()
                }
                .frame(height: geometry.size.height * 0.20 )
                .frame(maxWidth: .infinity)
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .padding([.top], 50)
        .padding([.leading, .trailing], 20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "Sadhguru", text: "The past is memory. The future is imagination. And you are right here, right now. The past is memory. The future is imagination. And you are right here, right now.")
    }
}
