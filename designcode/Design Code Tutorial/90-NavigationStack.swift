import SwiftUI

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var icon: String
    var menu: Menu
}

enum Menu: String {
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
}

let navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet),
]

struct NavigationStackUi: View {
    var body: some View {
        NavigationStack {
            List(navigationItems) { item in
                NavigationLink(value: item) {
                    Label(item.title, systemImage: item.icon)
                        .foregroundColor(.primary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: NavigationItem.self) { item in
                switch item.menu {
                case .compass:
                    CompassView()
                case .card:
                    CardReflectionView()
                case .charts:
                    ChartView()
                case .radial:
                    RadialLayoutView()
                case .halfsheet:
                    HalfSheetView()
                case .gooey:
                    GooeyView()
                case .actionbutton:
                    ActionButtonView()
                }
            }
        }
    }
}

// Placeholder views
struct CompassView: View { var body: some View { Text("Compass View") } }
struct CardReflectionView: View { var body: some View { Text("Card Reflection View") } }
struct ChartView: View { var body: some View { Text("Chart View") } }
struct RadialLayoutView: View { var body: some View { Text("Radial Layout View") } }
struct HalfSheetView: View { var body: some View { Text("Half Sheet View") } }
struct GooeyView: View { var body: some View { Text("Gooey View") } }
struct ActionButtonView: View { var body: some View { Text("Action Button View") } }

// Preview
struct NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackUi()
    }
}
