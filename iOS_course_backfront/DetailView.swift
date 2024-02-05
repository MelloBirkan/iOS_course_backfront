//
//  DetailView.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 05/02/24.
//

import SwiftUI

struct Detail: Hashable {
  var name: String
  var color: Color
}

struct DetailView: View {
  var model: Detail
  
    var body: some View {
      ZStack {
        Color(model.color)
        Text(model.name)
      }
        .navigationTitle("Sou a tela 1")
    }
}

#Preview {
  NavigationStack { // para ver o modifier da navigation
    DetailView(model: Detail(name: "Mello", color: .red))
  }
}
