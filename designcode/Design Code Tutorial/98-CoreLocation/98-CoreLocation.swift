import SwiftUI

struct CoreLocationView: View {
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        VStack(spacing: 20) {
            // Display compass direction in degrees
            Text("\(String(format: "%.0f", locationManager.degrees))º".uppercased())
                .font(.largeTitle)
                .bold()
            
            // Display latitude and longitude or show a button to request location
            if let location = locationManager.location {
                Text("Latitude: \(location.latitude.formatted(.number.precision(.fractionLength(2)))), Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(2))))")
                    .font(.headline)
                    .multilineTextAlignment(.center)
            } else {
//                LocationButton {
//                    locationManager.requestLocation()
//                }
//                .labelStyle(.iconOnly)
//                .frame(width: 50, height: 50)
//                .background(Color.blue)
//                .foregroundColor(.white)
//                .cornerRadius(25)
//                .shadow(radius: 5)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct CoreLocationView_Previews: PreviewProvider {
    static var previews: some View {
        CoreLocationView()
    }
}

