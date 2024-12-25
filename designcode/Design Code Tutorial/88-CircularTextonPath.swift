import SwiftUI

struct CircleLabelView: View {
    var text: String
    var texts: [(offset: Int, element: Character)] {
        return Array(text.enumerated())
    }

    var body: some View {
        VStack {
            ForEach(texts, id: \.offset) { index, letter in
                Text(String(letter))
            }
        }
    }
}

struct WidthPreferenceKey: PreferenceKey {
    static var defaultValue: Double = 0
    static func reduce(value: inout Double, nextValue: () -> Double) {
        value = nextValue()
    }
}

struct Sizeable: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .preference(key: WidthPreferenceKey.self, value: geometry.size.width)
        }
    }
}


#Preview{
    CircleLabelView(
        text: "Latitude 35.08587 E • Longitude 21.43673 W • Elevation 64M • Incline 12 •".uppercased()
    )
}
