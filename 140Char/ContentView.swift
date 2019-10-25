//
//  ContentView.swift
//  140Char
//
//  Created by james hannan on 10/25/19.
//  Copyright © 2019 james hannan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var loggedIn: Bool = false
    
    var body: some View {
        VStack() {
            WelcomeText()
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action: {print("Button Tapped")}) {
                    LoginButtonContent()
                }
            }.padding(.top, 50)
            
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding(.top, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.black)
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome To 140CharactersofAwesome")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.orange)
            .multilineTextAlignment(.center)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.orange)
            .cornerRadius(15.0)
    }
}
