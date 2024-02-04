//
//  Toggle_14.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 03/02/24.
//

import SwiftUI

struct Toggle_14: View {
  @State private var isOn: Bool = true;
    var body: some View {
      ZStack {
        Color(isOn ? .orange : .gray)
          .ignoresSafeArea()
        VStack {
          Toggle(isOn: $isOn) {
            Text("Tomada")
          }
          .toggleStyle(.switch)
          .labelsHidden()
        }
      }
    }
}

#Preview {
    Toggle_14()
}
