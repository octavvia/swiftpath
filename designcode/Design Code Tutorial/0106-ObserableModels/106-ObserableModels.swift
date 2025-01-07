import SwiftUI
import Observation

// MARK: - Observable Models
@Observable
class MyViewModel {
    var name = "John"
    var items = [1, 2, 3]
    var count: Int { items.count }
}

// MARK: - ContentView Example
struct OberableView: View {
    var model = MyViewModel()
    
    var body: some View {
        VStack {
            Text("Name: \(model.name)")
                .font(.title)
            
            Text("Total Items: \(model.count)")
                .font(.subheadline)
            
            List(model.items, id: \.self) { item in
                Text("Item: \(item)")
            }
            
            Button("Add Item") {
                model.items.append(model.items.count + 1)
            }
            .padding()
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

// MARK: - Using @State for Local State
@Observable
class Donut: Identifiable {
    var id = UUID()
    var name = "Strawberry"
}

struct AddDonutView: View {
    @State private var donutToAdd: Donut?
    
    var body: some View {
        VStack {
            Button("Add Donut") {
                donutToAdd = Donut()
            }
            .buttonStyle(.borderedProminent)
            
            // Present a sheet to edit the donut
            .sheet(item: $donutToAdd) { donut in
                Text("Editing Donut: \(donut.name)")
                    .font(.title)
            }
        }
    }
}

// MARK: - Using @Environment for Global Shared Data
@Observable
class Account {
    var userName = "Meng"
}

struct MenuView: View {
    @Environment(Account.self) var account
    
    var body: some View {
        VStack {
            Text("Logged in as \(account.userName)")
                .font(.headline)
            
            Button("Update Username") {
                account.userName = "UpdatedUser"
            }
            .padding()
        }
    }
}

// Preview for MenuView
#Preview {
    MenuView()
        .environment(Account())
}

// MARK: - Using @Bindable for Bindings
struct DonutEditorView: View {
    @Bindable var donut = Donut()
    
    var body: some View {
        VStack {
            TextField("Donut Name", text: $donut.name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Donut: \(donut.name)")
        }
        .padding()
    }
}

// MARK: - Comparison: Observable vs StateObject
@Observable
class ObservableModel {
    var value = ""
}

class CombineModel: ObservableObject {
    @Published var value = ""
}

struct ObservableExampleView: View {
    var model = ObservableModel()
    
    var body: some View {
        VStack {
            Text("Observable: \(model.value)")
            
            TextField("Enter Value", text: Binding(get: {
                model.value
            }, set: { newValue in
                model.value = newValue
            }))
            .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct StateObjectExampleView: View {
    @StateObject var model = CombineModel()
    
    var body: some View {
        VStack {
            Text("StateObject: \(model.value)")
            
            TextField("Enter Value", text: $model.value)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

// MARK: - Main Preview
#Preview {
    TabView {
        OberableView()
            .tabItem {
                Label("Content", systemImage: "list.bullet")
            }
        
        AddDonutView()
            .tabItem {
                Label("Add Donut", systemImage: "plus")
            }
        
        MenuView()
            .tabItem {
                Label("Menu", systemImage: "person.circle")
            }
        
        DonutEditorView()
            .tabItem {
                Label("Editor", systemImage: "pencil")
            }
        
        ObservableExampleView()
            .tabItem {
                Label("Observable", systemImage: "eye")
            }
        
        StateObjectExampleView()
            .tabItem {
                Label("StateObject", systemImage: "gear")
            }
    }
}
