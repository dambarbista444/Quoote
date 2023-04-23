//
//  RightSwapedListView.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct RightSwapedListView: View {
    @Environment(\.presentationMode) var presentMode

    var quotes: [String]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    Button {
                        presentMode.wrappedValue.dismiss()
                    } label: {
                        Text("Done")
                    }
                }
                .padding(.horizontal)
                
                ScrollView(showsIndicators: false) {
                    ForEach(quotes, id: \.self) { quote in
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                                .frame(width: .infinity, height: 150)
                                .padding(.horizontal)
                            
                            HStack {
                                Text(quote)
                                    .frame(width: geometry.size.width * 0.70)
                                Button {
                                    // when press this button saved quotes
                                } label: {
                                    Image(systemName: "heart")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .scaledToFit()
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }
                }
            }
            .padding(.top, 30)
        }
    }
}

struct RightSwapedListView_Previews: PreviewProvider {
    static var previews: some View {
        RightSwapedListView(quotes: [])
    }
}
