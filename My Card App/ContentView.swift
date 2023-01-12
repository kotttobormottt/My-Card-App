//
//  ContentView.swift
//  My Card App
//
//  Created by Andrey Zharov on 12.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack {
                Image("avatar").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 250, height: 250).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 3))
                Text("Andrei Zharov")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("iOS Developer / Python Developer")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+79819802188")
                Card(image: "envelope.fill", message: "zharovandrey1989@gmail.com")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30).padding(.horizontal).frame(height: 60).overlay(HStack {Image(systemName: image)
            Text(message)
                .font(.title2)
                .fontWeight(.semibold)
        }.foregroundColor(Color(red: 0.10, green: 0.74, blue: 0.61)))
    }
}
