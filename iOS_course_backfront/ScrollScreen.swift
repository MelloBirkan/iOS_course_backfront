//
//  ScrollScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 20/02/24.
//

import SwiftUI

struct Persona: Identifiable {
  var id = UUID()
  var name: String
  var age: Int
}

struct ScrollScreen: View {
  var list: [Persona] = [
  Persona(name: "Caio", age: 23),
  Persona(name: "mello", age: 23),
  Persona(name: "lava", age: 23),
  ]
  @State var selectedPosition: Int? = nil
  @State var selectedPositionId: UUID? = nil // Usado para struct e afins
  
  var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        LazyVStack(spacing: 10) {
          ForEach(0..<12) { index in
            Text("Posição \(index)")
              .frame(maxWidth: .infinity)
              .frame(height: 45)
              .background(.teal)
              .clipShape(RoundedRectangle(cornerRadius: 18))
          }
        }
      }
      
      ScrollView(.horizontal) {
        LazyHStack(spacing: 10) {
          ForEach(0..<16) { index in
            Text("Posição \(index)")
              .frame(maxWidth: .infinity)
              .frame(height: 45)
              .background(selectedPosition == index ? Color.green : Color.pink)
              .clipShape(RoundedRectangle(cornerRadius: 10))
              .onTapGesture {
                selectedPosition = index
                print(index)
              }
          }
        }
      }.frame(height: 60) // obrigatorio para 2 lazy stacks
      
      ScrollView(.horizontal) {
        LazyHStack(spacing: 10) {
          ForEach(list) { persona in
            Text("nome: \(persona.name)")
              .frame(maxWidth: .infinity)
              .frame(height: 45)
              .background(selectedPositionId == persona.id ? Color.yellow : Color.indigo)
              .clipShape(RoundedRectangle(cornerRadius: 10))
              .onTapGesture {
                selectedPositionId = persona.id
                print(persona.id)
              }
          }
        }
      }.frame(height: 60) // obrigatorio para 2 lazy stacks
    }
    .padding()
  }
}

#Preview {
  ScrollScreen()
}
