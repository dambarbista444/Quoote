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
    
    @State var showRightSwapedListView = false
    @State var rightSwapedQuotes: [String] = []
    
    public var body: some View {
        VStack {
                CardStack(
                    direction: LeftRight.direction,
                    data: data,
                    onSwipe: { card, direction in
                      // to do
                        if direction == .right {
                            rightSwapedQuotes.append(card)
                        } else {
                            // Left
                            // Save quotes to favorite list
                        }
                        
                    },
                    content: { quote, _, _ in
                        CardView(name: name, text: quote)
                    }
                )
                .padding(.top, 100)
                .environment(\.cardStackConfiguration, CardStackConfiguration(
                    maxVisibleCards: 4,
                    swipeThreshold: 0.10
                ))
                
            HStack {
                Button {
                    presentMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .padding()
                }
                Spacer()
                
                Button {
                    presentMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "square.split.2x2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .padding()
                }
                
                Spacer()
                
                Button {
                    showRightSwapedListView.toggle()
                } label: {
                    Image(systemName: "list.bullet")
                        .resizable()
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
            .padding(.horizontal, 20)
        }
    }
    
    enum UpDownDirection {
        case up, down
        
        static func direction(degrees: Double) -> Self? {
            switch degrees {
            case 315..<360, 0..<45:
                return .up
            case 135..<225:
                return .down
            default: return nil
            }
        }
    }
}

struct DisplayQuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView(data: ["This is demo quotes"], name: "Sadhguru")
    }
}



               

                 
