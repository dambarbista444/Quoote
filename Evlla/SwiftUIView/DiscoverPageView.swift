//
//  DiscoverPageView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/28/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct QuotesCatagory: Hashable {
    let id = UUID()
    let name: String
    let image: String
    let quotes: [String]
}

struct DiscoverPageView: View {
    var authorProfile = AuthorProfile()
    var relationship = Relationship()
    var inspiration = Inspiration()
    

    @State var selectedItem: String? = nil
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                   // Text(LocalizedString.discoverTitleText)
//                        .font(.system(size: 20))
//                        .fontWeight(.bold)
                    
                    // MARK: - Author
                    CatagoryTitleView(title: LocalizedString.popularTitleText)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(authorProfile.catagories, id: \.self) { catagory in
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
                                
                                VStack(alignment: .center) {
                                    Image(catagory.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipShape(Circle())
                                        .frame(width: 100, height: 100, alignment: .center)
                                    
                                    Text(catagory.name)
                                }
                                .fullScreenCover(isPresented: showModal, content: {
                                    QuotesView(data: catagory.quotes, name: catagory.name)
                                })
                                .padding(.leading, 20)
                                .onTapGesture {
                                    print(catagory.name)
                                    showModal.wrappedValue = true
                                }
                            }
                        }
                    }
                    
                    //                // MARK: - General
                    //                CatagoryTitleView(title: LocalizedString.generalTitleText)
                    //                TopImageBottomTitleGridView(catagories: authorQuotesData)
                    //                    .onTapGesture {
                    //                        print("fart")
                    //                    }
                    
                    // MARK: - Relationship
                    CatagoryTitleView(title: "Relationship")
                    TopImageBottomTitleGridView(catagories: relationship.catagories)
                    
                    // MARK: - Health & Fitness
                    CatagoryTitleView(title: "Health & Fitness")
                    HealthAndFitnessView()
                    
                    // MARK: - Inspiration
                    CatagoryTitleView(title: "Inspiration")
                    TopImageBottomTitleGridView(catagories: inspiration.catagories)
                    
                    // MARK: - Jokes
                    CatagoryTitleView(title: "Jokes")
                    TopImageBottomTitleGridView(catagories: inspiration.catagories)
                    
                }
            }
            .navigationTitle(LocalizedString.discoverTitleText)
        }
        
        
    }
}

struct DiscoverPageView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPageView()
    }
}
