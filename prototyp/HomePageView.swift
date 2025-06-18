//
//  HomePageView.swift
//  prototyp
//
//  Created by Oliwia Piątkiewicz on 18/06/2025.
//

import SwiftUI

struct HomePageView: View {
    
    @State var searchBarText: String = ""
    var body: some View {
        ZStack{
            Color(.white)
            VStack{
                hungry
                HStack(alignment: .firstTextBaseline){
                    TopBarHomePageButton(icon: "heart", text: "Favourites")
                    TopBarHomePageButton(icon: "clock.arrow.circlepath", text: "Last meals")
                    TopBarHomePageButton(icon: "list.bullet.rectangle.portrait", text: "Lists")

                }
                HStack(alignment: .firstTextBaseline){
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .padding(.leading, 15)
                        .padding(.top, 8)
                    TextField("Search...", text: $searchBarText)
                }
                .padding(.bottom, 5)
                Divider()
                    .frame(width: UIScreen.main.bounds.width*0.9)
                
                
                HStack(alignment: .firstTextBaseline){
                    Spacer()
                    Text("Top Filters ⭐️")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.trailing, 40)
                }
                .padding(.top, 15)
                .padding(.bottom, 0)
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem()]) {
                        TopFiltersScrollViewItemView(emote: "🍕")
                        TopFiltersScrollViewItemView(emote: "🥩")
                        TopFiltersScrollViewItemView(emote: "🍙")
                        TopFiltersScrollViewItemView(emote: "🍓")
                        TopFiltersScrollViewItemView(emote: "🥞")
                        TopFiltersScrollViewItemView(emote: "🌭")
                        TopFiltersScrollViewItemView(emote: "🍔")

                    }
                }
                .frame(width: UIScreen.main.bounds.width*0.9)
                .offset(x: 0, y: -20)
                .scrollIndicators(.hidden)
                .mask(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: .clear, location: 0.0),
                            .init(color: .black, location: 0.05),
                            .init(color: .black, location: 0.95),
                            .init(color: .clear, location: 1.0)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                
                    
            
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    HomePageView()
}

extension HomePageView {
    private var hungry: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Hungry.. ?")
                .font(.title)
            .fontWeight(.semibold)
            .padding(.leading, 15)
            Spacer()
            Image(systemName: "bell.fill")
                .padding(.trailing, 15)
                .font(.title2)
        }.padding(.top)
    }
}
