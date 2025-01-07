//import SwiftUI
//
//
//enum ProgrammingLang:String,CaseIterable,Identifiable {
//    var id: String { self.rawValue }
//    
//    case swiftui = "SwiftUI"
//    case flutter = "Flutter"
//    case react = "React"
//}
//
//
//struct SegmentedPicker: View {
//    @State private var favouriteLang = ProgrammingLang.swiftui
//    var body: some View {
//        Picker("Fav", selection: $favouriteLang) {
//            ForEach(ProgrammingLang.allCases) { lang in
//                Text(lang.rawValue)
//                    .tag(lang)
//            }
//        }
//        .pickerStyle(.segmented)
//        .padding()
//    }
//}
//
//#Preview {
//    SegmentedPicker()
//}
