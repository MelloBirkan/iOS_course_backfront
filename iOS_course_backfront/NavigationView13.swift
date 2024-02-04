//
//  NavigationView13.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 03/02/24.
//

import SwiftUI

struct NavigationView13: View {
    var body: some View {
      NavigationView {
        NavigationLink("Ir para a tela 2") {
          Tela2()
        }
        .navigationTitle("Tela I")
      }
    }
}

struct Tela2: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    VStack {
      Text("Tela 02")
      Button("voltar") {
        dismiss()
      }
    }
    .navigationTitle("Tela II")
  }
}

#Preview {
    NavigationView13()
}
