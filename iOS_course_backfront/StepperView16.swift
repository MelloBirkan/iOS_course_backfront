//
//  StepperView.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 04/02/24.
//

import SwiftUI

struct StepperView: View {
  
  @State var contador: Int = 0
    var body: some View {
        Stepper("Contador",
                value: $contador, in: 0...10, step: 3)
        .labelsHidden()
      Text("\(contador)")
    }
}

#Preview {
    StepperView()
}
