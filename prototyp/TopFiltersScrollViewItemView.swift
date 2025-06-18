//
//  TopFiltersScrollViewItemView.swift
//  prototyp
//
//  Created by Oliwia Piątkiewicz on 18/06/2025.
//

import SwiftUI

struct TopFiltersScrollViewItemView: View {
    let emote: String
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(.black, lineWidth: 0.5)
                    .background(.white)
                    .frame(width: 70, height: 70)
                Text(emote)
                    .font(.title)
                    
            }
        }
    }
}

#Preview {
    TopFiltersScrollViewItemView(emote: "asdasd")
}
