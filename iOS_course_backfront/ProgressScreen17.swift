//
//  ProgressScreen17.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 04/02/24.
//

import SwiftUI

struct ProgressScreen17: View {
  @State var progress: Double = 0.0
  let maxTotal: Double = 10
  var body: some View {
    HStack(spacing: 15) {
      Button("Diminuir") {
        progress -= 1
      }
      ProgressView(value: progress, total: maxTotal)
        .padding()
      Button("Avançar") {
        startProgress()
      }
    }
    .padding(25)
  }
  
  func startProgress() {
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
      if self.progress < maxTotal {
        progress += 2
      } else {
        timer.invalidate()
        progress = 0
      }
    }
  }
}

#Preview {
  ProgressScreen17()
}
