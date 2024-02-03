//
//  NavegacaoSimples12.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 02/02/24.
//

import SwiftUI

struct NavegacaoSimples12: View {
  @State private var isPresented = false
  @State private var isPresentedFull = false
  
    var body: some View {
      VStack {
        Button("Apresentar Sheet") {
          isPresented.toggle()
        }
        .sheet(isPresented: $isPresented, content: {
          SheetView()
        })
  
        Button("Apresentar FullScreen") {
          isPresentedFull.toggle()
        }
        .fullScreenCover(isPresented: $isPresentedFull, content: {
          SheetView()
        })
      }
      .padding()
    }
}

struct SheetView: View {
  @Environment(\.dismiss) var ds // Variavel de ambiente
  
  var body: some View {
    ZStack {
      Color(.green).ignoresSafeArea()
      VStack {
        Text("Essa é a Sheet")
        Button("Fechar") {
          ds()
        }
      }
    }
  }
}

#Preview {
    NavegacaoSimples12()
}
