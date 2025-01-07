// ChartView.swift
import SwiftUI
import Charts

struct Value: Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

struct ChartsView: View {
    let data = [
        Value(day: "Jun 1", value: 200),
        Value(day: "Jun 2", value: 96),
        Value(day: "Jun 3", value: 312),
        Value(day: "Jun 4", value: 256),
        Value(day: "Jun 5", value: 505),
    ]

    let data2 = [
        Value(day: "Jun 1", value: 151),
        Value(day: "Jun 2", value: 192),
        Value(day: "Jun 3", value: 176),
        Value(day: "Jun 4", value: 158),
        Value(day: "Jun 5", value: 401),
    ]

    var body: some View {
        VStack {
            Text("Bar Chart")
                .font(.headline)

            Chart {
                ForEach(data) { item in
                    BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
                        .cornerRadius(10)
                }
            }
            .foregroundStyle(.linearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom))
            .frame(maxWidth: .infinity)
            .frame(height: 300)

            Text("Line Chart with Multiple Series")
                .font(.headline)

            Chart {
                ForEach(data) { item in
                    LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                             series: .value("Year", "2022"))
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(.blue)
                        .symbol(by: .value("Year", "2022"))
                }
                ForEach(data2) { item in
                    LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                             series: .value("Year", "2021"))
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(.green)
                        .symbol(by: .value("Year", "2021"))
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)

        }
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}

