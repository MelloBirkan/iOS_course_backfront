//
//  BottomSheetScreen.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 10/02/24.
//

import SwiftUI

struct BottomSheetScreen: View {
  @State var presentation: Bool = false
    var body: some View {
      Button("Exibir tela 2") {
        presentation.toggle()
      }
      .sheet(isPresented: $presentation) {
        Text("Hello world")
//          .presentationDetents([.height(100)])
          .presentationDetents([.medium, .large])
          .presentationDragIndicator(.hidden)
      }
    }
}

#Preview {
    BottomSheetScreen()
}
