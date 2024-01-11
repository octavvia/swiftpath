//
//  31-DatePicker.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation

/// VERSI 1
//import SwiftUI
//
//struct DatePickerVieww: View {
//    @State private var selectedDate = Date()
//
//    var body: some View {
//        VStack {
//            // DatePicker
//            DatePicker("Select a Date", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
//                .padding()
//                .datePickerStyle(WheelDatePickerStyle()) // You can use other styles as well
//
//            // Display the selected date
//            Text("Selected Date: \(formattedDate())")
//                .padding()
//        }
//        .navigationTitle("Date Picker Example")
//    }
//
//    // Helper function to format the selected date
//    func formattedDate() -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .long
//        return dateFormatter.string(from: selectedDate)
//    }
//}
//
//struct DatePickerVieww_Previews: PreviewProvider {
//    static var previews: some View {
//        DatePickerVieww()
//    }
//}

/// VERSI 2

//import SwiftUI
//
//struct DatePicView: View {
//    @State private var selectedDate = Date()
//
//    var body: some View {
//        VStack {
//            // DatePicker with custom styling
//            DatePicker("", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
//                .datePickerStyle(DefaultDatePickerStyle())
//                .labelsHidden()
//                .accentColor(.blue)
//                .padding()
//                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.blue, lineWidth: 1)
//                )
//
//            // Display the selected date
//            Text("Selected Date: \(formattedDate())")
//                .padding()
//        }
//        .navigationTitle("Date Picker Example")
//    }
//
//    // Helper function to format the selected date
//    func formattedDate() -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .long
//        return dateFormatter.string(from: selectedDate)
//    }
//}
//
//struct DatePicView_Previews: PreviewProvider {
//    static var previews: some View {
//        DatePicView()
//    }
//}

import SwiftUI

struct DatPic: View {
    @State private var selectedDate = Date()
    private var currentDate = Date()

    var body: some View {
        VStack {
            // DatePicker dengan batasan tanggal yang belum terlewat
            DatePicker("", selection: $selectedDate, in: currentDate..., displayedComponents: .date)
                .datePickerStyle(DefaultDatePickerStyle())
                .labelsHidden()
                .accentColor(.blue)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 1)
                )

            // Menampilkan tanggal yang dipilih
            Text("Selected Date: \(formattedDate())")
                .padding()
        }
        .navigationTitle("Date Picker Example")
    }

    // Fungsi bantuan untuk memformat tanggal yang dipilih
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: selectedDate)
    }
}

struct DatPic_Previews: PreviewProvider {
    static var previews: some View {
        DatPic()
    }
}

