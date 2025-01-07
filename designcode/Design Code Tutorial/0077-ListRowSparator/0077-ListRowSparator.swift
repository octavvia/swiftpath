import SwiftUI

struct ListRowSparator: View {
    var body: some View {
        List(authors) { author in
            Text(author.name)
                .listRowSeparatorTint(.green)
                .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    ListRowSparator()
}

struct Author: Identifiable {
    var id = UUID()
    var name: String
}

var authors = [
    Author(name: "Meng To"),
    Author(name: "Stephanie Diep"),
    Author(name: "Willie Yam"),
    Author(name: "Sai Kambampati")
]
