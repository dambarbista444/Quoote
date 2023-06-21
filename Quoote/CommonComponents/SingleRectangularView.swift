//
//  SingleRectangularView.swift
//  Evlla
//
//  Created by Dambar Bista on 5/7/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct SingleRectangularView: View {
    var title: String
    var icon: String
    var color: Color
    var catagories: [QuotesCatagory]
    
    @State var showModal = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
                .cornerRadius(15)
                .frame(width: .infinity, height: 200)
                .padding(.horizontal, 20)
            
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.medium)
                Image(icon)
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            .fullScreenCover(isPresented: $showModal, content: {
                ForEach(catagories, id: \.self) { catagory in
                    QuotesView(data: catagory.quotes, name: catagory.name, color: catagory.color ?? .blue)
                }
            })
        }
        .onTapGesture {
            showModal.toggle()
        }
    }
}

struct SingleRectangularView_Previews: PreviewProvider {
    static var previews: some View {
        SingleRectangularView(title: "Title", icon: "heart", color: .green, catagories: [])
    }
}
