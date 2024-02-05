//
//  ImageScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 04/02/24.
//

import SwiftUI

struct ImageScreen: View {
    var body: some View {
        Image(systemName: "trash")
        .resizable()
//        .rotationEffect(.degrees(40))
//        .scaledToFit()
//        .scaledToFill()
        .frame(width: 150, height: 150)
        .padding()
      // Backgorund aceita qualquer tipo de view
        .background(
          Capsule().stroke(Color.purple, lineWidth: 4)
        )
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .onTapGesture {
          print("Cliquei no lixo")
        }
    }
}

#Preview {
    ImageScreen()
}
