//
//  CommonGridView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/30/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

// MARK: - CatagoryTitleView
struct LeftAligned: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            content
            Spacer()
        }
    }
}

extension View {
    func leftAligned() -> some View {
        modifier(LeftAligned())
    }
}


struct CatagoryTitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .leftAligned()
            .padding(.leading, 20)
    }
}


// MARK: - TopImageBottomTitleGridView
struct TopImageBottomTitleGridView: View {
//    let icon: String?
//    let title: String?
//    let quotes
//
//
//    init(icon: String? = nil, title: String? = nil) {
//        self.icon = icon
//        self.title = title
//    }
    let catagories: [QuotesCatagory]
    @State var selectedItem: String? = nil
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.adaptive(minimum: 170))
            ], spacing: 20) {
                ForEach(catagories, id: \.self) { catagory in
                    let showModal = Binding(
                        get: { selectedItem == catagory.name },
                        set: { newValue in
                            if newValue == false {
                                selectedItem = nil
                            } else {
                                selectedItem = catagory.name
                            }
                        }
                    )
                    ZStack {
                        Rectangle()
                            .frame(width: 170, height: 170)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                        
                        VStack {
                            Image(catagory.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                            Text(catagory.name)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                        }
                        .fullScreenCover(isPresented: showModal, content: {
                            QuotesView(data: catagory.quotes, name: catagory.name)
                        })
                    }
                    .onTapGesture {
                        showModal.wrappedValue = true
                    }
                }
            }
            .padding([.leading, .trailing])
    }
}

struct CommonGridView_Previews: PreviewProvider {
    static var previews: some View {
        TopImageBottomTitleGridView(catagories: [])
    }
}


