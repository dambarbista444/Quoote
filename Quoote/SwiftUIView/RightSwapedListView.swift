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
    
    @State var favoritesTaped: [Bool]
    
    init(quotes: [String]) {
        self.quotes = quotes
        self._favoritesTaped = State(initialValue: Array(repeating: false, count: quotes.count))
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    Button {
                        presentMode.wrappedValue.dismiss()
                    } label: {
                        Text(LocalizedString.doneText)
                    }
                }
                .padding(.horizontal)
                ScrollView(showsIndicators: false) {
                    ForEach(quotes.indices, id: \.self) { index in
                        ZStack {
                            Rectangle()
                                .cornerRadius(10)
                                .frame(minHeight: 150)
                                .padding(.horizontal)
                                .foregroundColor(Color.white)
                                .shadow(radius: 5)
                            HStack {
                                Text(quotes[index])
                                    
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width * 0.70)
                                Button {
                                    favoritesTaped[index].toggle()
                                    if favoritesTaped[index] {
                                        CoreDataModel.saveQuotes(with: quotes[index])
                                    } else {
                                        CoreDataModel.removeQuotes()
                                    }
                                } label: {
                                    Image(systemName: favoritesTaped[index] ? "heart.fill" : "heart")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .scaledToFit()
                                        .foregroundColor(.black)
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
        RightSwapedListView(quotes: ["hello this is demo text", "hello this is demo"])
    }
}
