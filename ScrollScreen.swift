//
//  ScrollScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 20/02/24.
//

import SwiftUI

struct ScrollScreen: View {
  var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        LazyVStack(spacing: 10) {
          ForEach(0..<16) { index in
            Text("Posição \(index)")
              .frame(maxWidth: .infinity)
              .frame(height: 45)
              .background(.teal)
              
          }
        }
      }
      
      ScrollView(.horizontal) {
        LazyHStack(spacing: 10) {
          ForEach(0..<16) { index in
            Text("Posição \(index)")
              .frame(maxWidth: .infinity)
              .frame(height: 45)
              .background(.pink)
              .onTapGesture {
                print(index)
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
