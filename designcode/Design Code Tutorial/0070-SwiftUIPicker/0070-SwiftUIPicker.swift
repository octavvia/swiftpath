import SwiftUI

enum ProgrammingLang: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case swiftui = "SwiftUI"
    case flutter = "Flutter"
    case react = "React"
}


struct SegmentedPicker: View {
    @State private var favouriteLang = ProgrammingLang.swiftui
    var body: some View {
        Picker("Fav", selection: $favouriteLang) {
            ForEach(ProgrammingLang.allCases) { lang in
                Text(lang.rawValue)
                    .tag(lang)
            }
        }
        .pickerStyle(.segmented)
        .padding()
    }
}

struct SwiftUIPickerView: View {
    
    var body: some View {
        
        TabView {
            NavigationView {
                WheelPicker()
                    .navigationTitle("WheelPicker")
            }
            .tabItem {
                Label("Menu", systemImage: "list.dash")
            }
            NavigationView {
                
                
                SegmentedPicker()
                    .navigationTitle("SegmentedPicker")
                
            }
            .tabItem {
                Label("Order", systemImage: "square.and.pencil")
            }
            .padding()
        }
        
    }
}

#Preview {
    SwiftUIPickerView()
}
