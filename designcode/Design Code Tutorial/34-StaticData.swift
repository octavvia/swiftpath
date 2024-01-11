//
//  34-StaticData.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct StaticDataa: View {
    let staticData: [Person] = [
        Person(name: "John Doe", age: 30),
        Person(name: "Jane Doe", age: 25),
        Person(name: "Bob Smith", age: 40)
    ]

    var body: some View {
        NavigationView {
            List(staticData, id: \.name) { person in
                NavigationLink(destination: StaticDataaView(person: person)) {
                    Text(person.name)
                }
            }
            .navigationTitle("Static Data Example")
        }
    }
}

struct StaticDataaView: View {
    let person: Person

    var body: some View {
        VStack {
            Text("Name: \(person.name)")
            Text("Age: \(person.age)")
        }
        .navigationTitle("Detail")
    }
}

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}

struct StaticDataa_Previews: PreviewProvider {
    static var previews: some View {
        StaticDataa()
    }
}
