//
//  FavoriteListView.swift
//  Evlla
//
//  Created by Dambar Bista on 4/23/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct FavoriteListView: View {
    @Environment(\.presentationMode) var presentMode
   
    var body: some View {
        NavigationView {
            List {
                ForEach(favoriteList, id: \.self) { favorite in
                    Text(favorite.value(forKeyPath: "title") as? String ?? "")
                }
                .onDelete(perform: deleteQuote(at:))
            }
            .navigationTitle("Favorites")
            .toolbar {
                Button {
                    presentMode.wrappedValue.dismiss()
                } label: {
                    Text("Done")
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    func deleteQuote(at offsets: IndexSet) {
        for index in offsets {
            let favorite = favoriteList[index]
            CoreDataModel.context.delete(favorite)
            favoriteList.remove(atOffsets: offsets)
            CoreDataModel.saveContext()
        }
    }
}

struct FavoriteListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteListView()
    }
}
