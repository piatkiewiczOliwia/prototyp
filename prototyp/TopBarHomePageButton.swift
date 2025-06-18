//
//  TopBarHomePageButton.swift
//  prototyp
//
//  Created by Oliwia Piątkiewicz on 18/06/2025.
//

import SwiftUI

struct TopBarHomePageButton: View {
    let icon: String
    let text: String
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 17)
                    .stroke(Color.gray, lineWidth: 0.5)
                    .frame(width: UIScreen.main.bounds.width/3.2, height: 40)
                    .background(.white)
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(.black)
                    Text(text)
                        .foregroundStyle(.black)
                }
                .font(.subheadline)
            }
        }
    }
}

#Preview {
    TopBarHomePageButton(icon: "heart", text: "Favourites")
}
