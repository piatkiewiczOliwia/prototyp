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
                
                searchBar
                Divider()
                    .frame(width: UIScreen.main.bounds.width*0.9)
                
                //top filters
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
                    .frame(height: 115)
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
                .padding(.bottom, -10)
            
                //quiz
                HStack(alignment: .firstTextBaseline){
                    Text("Take a quick quiz!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.leading, 15)
                    Spacer()
                }
                .padding(.top, 0)
                .padding(.bottom, 0)
                
                Button {
                
                } label: {
                    ZStack(alignment: .bottomTrailing) {
                        Image("")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.black)
                            .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.15)
                            .background(Color.black.opacity(0.08))
                            .cornerRadius(15)
                        .overlay(.white.opacity(0.6))
                        
                        Text("Tell us your cravings..")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black.opacity(0.3))
                                    .italic()
                                    .padding()
                        
                    }
                        
                }
                
                //hot today
                HStack(alignment: .firstTextBaseline){
                    Spacer()
                    Text("Hot today 🔥")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.trailing, 40)
    
                }
                .padding(.top, 20)
                .padding(.bottom, 0)
                
                let imageNames = ["first image", "second image", "third image"]
                
                TabView {
                            ForEach(imageNames, id: \.self) { name in
                                Text(name)
                                    .frame(width: UIScreen.main.bounds.width * 0.9,
                                           height: UIScreen.main.bounds.height * 0.15)
                                    .background(.black.opacity(0.1))
                                    .clipped()
                                    
                                    .overlay(Color.white.opacity(0.6))
                            }
                        }
                        .tabViewStyle(.page)
                        .frame(width: UIScreen.main.bounds.width * 0.9,
                               height: UIScreen.main.bounds.height * 0.15)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.bottom)
                
                //nav bar
            
                Divider()
                    .frame(width: UIScreen.main.bounds.width*0.9)
                    .padding(.bottom)
        
                
                HStack(spacing: 45){
                    Image(systemName: "house")
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "plus.app")
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Image(systemName: "person")
                }
                .font(.title2)
                

                
                    
            
                Spacer()
                
                
                
            }
            //frame na vstack
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
    
    private var searchBar: some View{
        HStack(alignment: .firstTextBaseline){
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .padding(.leading, 15)
                .padding(.top, 8)
            TextField("Search...", text: $searchBarText)
        }
        .padding(.bottom, 5)
    }
}
