import SwiftUI

// Model for Card Data
struct Card: Identifiable {
    let id: Int
    let title: String
    let color: Color
}

// Sample Card Data
let cards = [
    Card(id: 1, title: "Explore the Globe", color: .blue),
    Card(id: 2, title: "Welcome Home", color: .red),
    Card(id: 3, title: "Write Your Story", color: .indigo)
]

// Card View
struct NCardView: View {
    let card: Card
    var show: Bool = true // Determines if it's a detail or preview view

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if show {
                Text(card.title)
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(card.color)
        .cornerRadius(20)
    }
}

// Main CardsView
struct CardsView: View {
    @Namespace var namespace // Namespace for matched transitions

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(cards) { card in
                    NavigationLink {
                        // Detail View for Each Card
                        NCardView(card: card)
                            .navigationTransition(.zoom(sourceID: "card\(card.id)", in: namespace))
                            .padding()
                    } label: {
                        // Preview View for Each Card
                        NCardView(card: card, show: true)
                            .matchedTransitionSource(id: "card\(card.id)", in: namespace)
                            .padding(.vertical, 12)
                    }
                }
                .padding(.horizontal, 30)
            }
            .background(Color(.systemGray5))
            .ignoresSafeArea()
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}

