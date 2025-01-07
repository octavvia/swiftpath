import SwiftUI

struct Authori: Identifiable {
    var id = UUID()
    var name: String
}

struct SearchableListView: View {
    // Initial authors array
    var authors = [
        Authori(name: "Meng To"),
        Authori(name: "Stephanie Diep"),
        Authori(name: "Willie Yam"),
        Authori(name: "Sai Kambampati")
    ]
    
    // State variables for the search text and filtered authors
    @State private var text = ""
    @State private var updatedAuthors: [Authori] = []
    
    var body: some View {
        NavigationView {
            List(text.isEmpty ? authors : updatedAuthors) { author in
                Text(author.name)
            }
            .navigationTitle("Authors")
            .searchable(text: $text)
            .onChange(of: text) { searchValue in
                // Filter authors based on the search text
                updatedAuthors = authors.filter { $0.name.lowercased().contains(searchValue.lowercased()) }
            }
        }
    }
}

#Preview{
    SearchableListView()
}
