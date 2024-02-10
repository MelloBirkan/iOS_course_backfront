//
//  TabScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 10/02/24.
//

import SwiftUI

struct TabScreen: View {
  @State private var selection: Int = 0
    var body: some View {
      TabView(selection: $selection){
        Text("Primeira tela")
          .tabItem {
            selection == 1 ? Image(systemName: "1.circle") : Image(systemName: "book.fill")
            Text("primeira")
          }
          .tag(1)
        Text("Segunda Tela")
          .tabItem {
            Image(systemName: "2.circle")
            Text("segunda")
          }
          .tag(2)
      }
      .tint(.indigo)
    }
}

#Preview {
    TabScreen()
}
