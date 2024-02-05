//
//  DatePicker.swift
//  iOS_course_backfront
//
//  Created by Marcello Gonzatto Birkan on 04/02/24.
//

import SwiftUI

struct DatePickerView: View {
  @State var date = Date()
  var body: some View {
    VStack {
      DatePicker(
        "Escolha uma data",
        selection: $date,
        displayedComponents: [.date]
      )
      Text("A data é: \(formattedDate)")
      DatePicker(
        "Escolha uma data",
        selection: $date,
        displayedComponents: [.hourAndMinute]
      )
      .labelsHidden()
      
      DatePicker(
        "Escolha uma data",
        selection: $date,
        displayedComponents: [.date]
      )
      .datePickerStyle(.graphical)
      .labelsHidden()
    }
    .padding()
  }
  
  var formattedDate: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy"
    return dateFormatter.string(from: date)
  }
  
}


#Preview {
  DatePickerView()
}
