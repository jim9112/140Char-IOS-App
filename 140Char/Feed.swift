//
//  Feed.swift
//  140Char
//
//  Created by james hannan on 10/25/19.
//  Copyright © 2019 james hannan. All rights reserved.
//

import SwiftUI

struct Feed: View {
    var userName: String = "jim9112"
    var body: some View {
       
        VStack {
            HStack {
                Text("Hello " + userName)
                    .font(.title)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.center)
            }
            HStack {
                TextField("Say Something", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    PostButtonContent()
                }
            }
            .padding()
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            VStack {
                List {
                    /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                }
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

struct PostButtonContent: View {
    var body: some View {
        Text("Post")
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.orange)
            .cornerRadius(15.0)
    }
}
