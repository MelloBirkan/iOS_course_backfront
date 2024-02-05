//
//  NavigationStackScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 05/02/24.
//

import SwiftUI

struct NavigationStackScreen: View {
  var body: some View {
    //    NavigationView {
    //      VStack{
    //        NavigationLink("Ir para tela 1") {
    //          Text("Sou a tela 1")
    //        }
    //        NavigationLink("Ir para tela 2") {
    //          Text("Sou a tela 2")
    //        }
    //      }
    //    }
    //    NavigationStack {
    //          VStack{
    //            NavigationLink("Ir para tela 1") {
    //              Text("Sou a tela 1")
    //            }
    //            NavigationLink("Ir para tela 2") {
    //              Text("Sou a tela 2")
    //            }
    //          }
    //        }
    //  }
    
    //    NavigationStack Destination
    NavigationStack {
      VStack(spacing: 15){
        NavigationLink("Ir para Tela 1", value: Detail(name: "Mello", color: .blue))
        NavigationLink("Ir para Tela Laranja", value: Color.orange)
      }
      .navigationDestination(for: Detail.self) { value in
        DetailView(model: value)
      }
      .navigationDestination(for: Color.self) { value in
        ZStack {
          value.ignoresSafeArea()
            .navigationTitle("Tela Laranja")
            .navigationBarTitleDisplayMode(.inline)
        }
      }
      // Para ser na propria tela colocamos dentro essa mod
      .navigationTitle("Telas") // aqui é para a tela principlal
    }
  }
}

#Preview {
  NavigationStackScreen()
}
