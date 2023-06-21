//
//  DiscoverPageView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/28/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct DiscoverPageView: View {
    var authorProfile = MostPopular()
    var relationship = Relationship()
    var inspiration = Inspiration()
    var healthAndFitness = HealthAndFitness()
    var famousQuotes = FamousQuotes()
    
    @State var showFavoriteModal = false
    @State var selectedItem: String? = nil
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    // MARK: - Most Popular
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
                                    QuotesView(data: catagory.quotes, name: catagory.name, color: catagory.color ?? .green)
                                })
                                .padding(.leading, 20)
                                .onTapGesture {
                                    showModal.wrappedValue = true
                                }
                            }
                        }
                    }
                    
                    // MARK: - General
                    CatagoryTitleView(title: LocalizedString.generalTitleText)
                    SingleRectangularView(title: LocalizedString.topHundredText, icon: "topChart", color: .green, catagories: famousQuotes.catagories)
                    
                    // MARK: - Relationship
                    CatagoryTitleView(title: LocalizedString.relationshipTitleText)
                    TopImageBottomTitleGridView(catagories: relationship.catagories)
                    
                    // MARK: - Health & Fitness
                    CatagoryTitleView(title: LocalizedString.healthAndFitnessTitleText)
                    SingleRectangularView(title: LocalizedString.healthAndFitnessTitleText, icon: "fitness", color: .blue, catagories: healthAndFitness.catagories)
                    
                    // MARK: - Inspiration
                    CatagoryTitleView(title: LocalizedString.inspirationTitleText)
                    TopImageBottomTitleGridView(catagories: inspiration.catagories)
                }
            }
            .navigationTitle(LocalizedString.discoverTitleText)
            .toolbar {
                Button {
                    showFavoriteModal.toggle()
                } label: {
                    Text(LocalizedString.favoriteText)
                }
            }
            .sheet(isPresented: $showFavoriteModal) {
                FavoriteListView()
            }
        }
        .onAppear() {
            CoreDataModel.fetchQuotes()
        }
    }
}

struct DiscoverPageView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPageView()
    }
}
