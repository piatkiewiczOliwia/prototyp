//
//  SwiftUIView.swift
//  prototyp
//
//  Created by Oliwia Piątkiewicz on 18/06/2025.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var username: String = ""
    @State var password: String = ""
    @State private var submitted: Bool = false
    var body: some View {
            ZStack {
                Color(.white)
                VStack {
                    usernamePasswordTextfields
                    
                    forgotPassword
                    
                    loginButton
                }
            }
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $submitted, content: {
                HomePageView()
            })
    }
}

#Preview {
    LoginView()
}

extension LoginView {
    private var usernamePasswordTextfields: some View {
        VStack {
            Text("Yumsy")
                .fontWeight(.semibold)
                .font(.largeTitle)
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300, height: 50)
                .background(.black.opacity(0.05))
                .cornerRadius(15)
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300, height: 50)
                .background(.black.opacity(0.05))
                .cornerRadius(15)
        }
    }
    
    private var forgotPassword: some View {
        HStack {
            Spacer()
            Text("Forgot password?")
                .font(Font(.init(.label, size: 12)))
                .foregroundStyle(.secondary)
                .padding(.bottom)
                .onTapGesture {}
        }
        .frame(width: 300)
    }
    
    private var loginButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
            submitted = true
        } label: {
            Text("Login")
                .foregroundColor(.black)
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.08))
                .cornerRadius(15)
        }
    }
    
}


