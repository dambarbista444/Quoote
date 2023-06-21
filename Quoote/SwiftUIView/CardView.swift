//
//  CardView.swift
//  Evlla
//
//  Created by Dambar Bista on 3/31/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI
import CoreData

struct CardView: View {
    var name: String
    var quote: String
    var icon: String
    
    @State var showAlertMessage = false
    @State var showShareSheetModal = false
    
    init(name: String, quote: String, icon: String) {
        self.name = name
        self.quote = quote
        self.icon = icon
        showAlreadyFavoriteIcon(icon: &self.icon, quotes: quote)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack() {
                HStack {
                    Button {
                        showShareSheetModal = true
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .padding()
                    }
                    .sheet(isPresented: $showShareSheetModal) {
                        ActivityView(activityItems: [quote])
                    }
                    
                    Button {
                        showAlertMessage = true
                    } label: {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                    }
                    .alert(LocalizedString.messageText, isPresented: $showAlertMessage) {
                        // No action required
                    } message: {
                        Text(LocalizedString.howToSaveFavoriteText)
                    }
                }
                
                Text(quote)
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(height: geometry.size.height * 0.50)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                HStack() {
                    Spacer()
                    Text(name)
                        .foregroundColor(.black)
                        .font(.headline)
                    Image(systemName: icon)
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .scaledToFit()
                    Spacer()
                }
                .frame(height: geometry.size.height * 0.20)
                .frame(maxWidth: .infinity)
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .padding([.top], 50)
        .padding([.leading, .trailing], 20)
    }
    
    func showAlreadyFavoriteIcon(icon: inout String, quotes: String) {
        let request: NSFetchRequest<Quotes> = Quotes.fetchRequest()
        request.predicate = NSPredicate.init(format: "title == %@", quotes)
        request.fetchLimit = 1
        do {
            let count = try CoreDataModel.context.count(for: request)
            if count == 1 {
                icon = "heart.fill"
            } else {
                icon = ""
            }
        } catch {
            print("Failure to fetch quotes: \(error)")
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "Sadhguru", quote: "The past is memory. The future is imagination. And you are right here, right now. The past is memory. The future is imagination. And you are right here, right now.", icon: "")
    }
}
