//
//  ForEachScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 20/02/24.
//

import SwiftUI

struct Person: Identifiable {
  var id = UUID()
  var name: String
  var age: Int
}

struct ForEachScreen: View {
  let list:[String] = ["caio", "Mello", "Dani"]
  let listPerson = [
    Person(name: "Marcello", age: 24),
    Person(name: "Daniela", age: 22)
  ]
  
  
  var body: some View {
    VStack {
      ForEach(0..<4) { value in
        Text("Hello , world numero: \(value)")
      }
      
      ForEach(list, id: \.self) { name in // o ID será o valor mesmo
        Text(name)
      }
      
      ForEach(listPerson) { name in
        Text("O nome é \(name.name) e a idade é \(name.age)")
      }
    }
  }
}

#Preview {
  ForEachScreen()
}
