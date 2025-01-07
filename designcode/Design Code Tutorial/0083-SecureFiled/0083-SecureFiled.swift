import SwiftUI

struct SecureFieldExample: View {
    @State var password = "Password"
    
    var body: some View {
        VStack {
            Text("Entered Password: \(password)")
                .padding()
            SecureField("Password", text: $password)
                .padding()
                .textContentType(.password)
                .textFieldStyle(RoundedBorderTextFieldStyle()) // Optional: Improve appearance
        }
        .font(.title).bold()
        .padding()
    }
}

#Preview {
    SecureFieldExample()
}
