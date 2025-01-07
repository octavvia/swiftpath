//import SwiftUI
//import SwiftData
//
//struct SwiftDataView: View {
//    @Environment(\.modelContext) var modelContext
//    @Query(sort: \Card.title, order: .forward) var cards: [Card]
//    
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(cards) { card in
//                    CardRow(card: card)
//                }
//                .onDelete(perform: deleteCard)
//                
//                Button(action: addCard) {
//                    Label("Add New Card", systemImage: "plus")
//                }
//            }
//            .navigationTitle("Cards")
//        }
//    }
//    
//    func addCard() {
//        let colors = [
//            Color(name: "Red"),
//            Color(name: "Blue"),
//            Color(name: "Green")
//        ]
//        let newCard = Card(title: "New Card", colors: colors)
//        modelContext.insert(newCard)
//    }
//    
//    func deleteCard(at offsets: IndexSet) {
//        offsets.map { cards[$0] }.forEach { card in
//            modelContext.delete(card)
//        }
//    }
//}
//
//struct CardRow: View {
//    let card: Card
//
//    var body: some View {
//        HStack {
//            Text(card.title)
//                .font(.headline)
//            Spacer()
//            ForEach(card.colors) { color in
//                Text(color.name)
//                    .font(.subheadline)
//                    .padding(4)
//                    .background(Color.gray.opacity(0.2))
//                    .cornerRadius(5)
//            }
//        }
//    }
//}
//
//#Preview {
//    let previewCard = Card(title: "Preview Card", colors: [
//        Color(name: "Preview Color 1"),
//        Color(name: "Preview Color 2")
//    ])
//    
//    let container = ModelContainer(for: [Card.self, Color.self])
//    container.insert(previewCard)
//    
//    return SwiftDataView()
//        .environment(\.modelContext, container.context)
//}
