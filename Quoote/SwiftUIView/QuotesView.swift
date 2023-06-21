//
//  DisplayQuotesView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/31/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI
import CardStack

public struct QuotesView: View {
    @Environment(\.presentationMode) var presentMode
    
    var data: [String]
    var name: String
    var color: Color
    
    @State var showRightSwapedListView = false
    @State var rightSwapedQuotes: [String] = []
    
    public init(data: [String], name: String, color: Color) {
        self.data = data.shuffled()
        self.name = name
        self.color = color
    }
    
    public var body: some View {
        VStack {
            CardStack(
                direction: LeftRight.direction,
                data: data,
                onSwipe: { quote, direction in
                    if direction == .right {
                        rightSwapedQuotes.append(quote)
                    } else {
                        /// Left
                        /// Save quotes to favorite list
                        CoreDataModel.saveQuotes(with: quote)
                    }
                },
                content: { quote, _, _ in
                    CardView(name: name, quote: quote, icon: "heart.fill")
                }
            )
            .frame(height: UIScreen.main.bounds.height - 250)
            .padding(.top, 100)
            .environment(\.cardStackConfiguration, CardStackConfiguration(
                maxVisibleCards: 5
            ))
            
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 130, height: 50)
                        .foregroundColor(color)
                        .cornerRadius(20)
                    HStack {
                        Image(systemName: "square.split.2x2")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                        
                        Text(LocalizedString.discoverTitleText)
                    }
                }
                .onTapGesture {
                    presentMode.wrappedValue.dismiss()
                }
                Spacer()
                ZStack {
                    Rectangle()
                        .frame(width: 60, height: 50)
                        .foregroundColor(color)
                        .cornerRadius(20)
                    Button {
                        showRightSwapedListView.toggle()
                    } label: {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                            .padding()
                    }
                    .sheet(isPresented: Binding(
                        get: { showRightSwapedListView },
                        set: { showRightSwapedListView = $0 }
                    )) {
                        RightSwapedListView(quotes: rightSwapedQuotes)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct DisplayQuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView(data: ["This is demo quotes"], name: "Sadhguru", color: .blue)
    }
}
