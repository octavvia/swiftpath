import SwiftUI

struct BlurredGradientView: View {
    @State private var t: Float = 0.0
    @State private var timer: Timer?

    var body: some View {
        ZStack {
            // Mesh Gradient with Blur
            MeshGradient(
                width: 3,
                height: 3,
                points: generateAnimatedPoints(t: t),
                colors: [
                    .red, .purple, .indigo,
                    .orange, .cyan, .blue,
                    .yellow, .green, .mint
                ]
            )
            .blur(radius: 50) // Tambahkan efek blur
            .onAppear {
                timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                    t += 0.02
                }
            }
            .onDisappear {
                timer?.invalidate()
            }
        }
        .ignoresSafeArea()
        .background(Color.black) // Tambahkan latar belakang hitam untuk kontras
    }

    // Animasi Grid Points
    func generateAnimatedPoints(t: Float) -> [SIMD2<Float>] {
        return [
            SIMD2<Float>(0, 0),
            SIMD2<Float>(0.5, sinInRange(0.1...0.9, offset: 0.3, timeScale: 0.8, t: t)),
            SIMD2<Float>(1, sinInRange(0.2...0.8, offset: 0.5, timeScale: 0.6, t: t)),
            SIMD2<Float>(0, sinInRange(-0.5...0.5, offset: 0.2, timeScale: 0.7, t: t)),
            SIMD2<Float>(0.5, 0.5),
            SIMD2<Float>(1, sinInRange(0.4...0.7, offset: 0.8, timeScale: 0.9, t: t)),
            SIMD2<Float>(0, sinInRange(-0.4...0.6, offset: 1.2, timeScale: 1.0, t: t)),
            SIMD2<Float>(0.5, sinInRange(0.3...0.6, offset: 1.0, timeScale: 0.5, t: t)),
            SIMD2<Float>(1, 1)
        ]
    }

    // Fungsi untuk Mengatur Posisi Titik dengan Sine Wave
    func sinInRange(_ range: ClosedRange<Float>, offset: Float, timeScale: Float, t: Float) -> Float {
        let amplitude = (range.upperBound - range.lowerBound) / 2
        let midPoint = (range.upperBound + range.lowerBound) / 2
        return midPoint + amplitude * sin(timeScale * t + offset)
    }
}

// Komponen MeshGradient untuk Menampilkan Grid Warna
struct MeshGradient: View {
    let width: Int
    let height: Int
    let points: [SIMD2<Float>]
    let colors: [Color]

    var body: some View {
        GeometryReader { geometry in
            Canvas { context, size in
                let cellWidth = size.width / CGFloat(width - 1)
                let cellHeight = size.height / CGFloat(height - 1)

                for row in 0..<height {
                    for col in 0..<width {
                        let index = row * width + col
                        let point = points[index]
                        let color = colors[index]

                        let x = CGFloat(point.x) * size.width
                        let y = CGFloat(point.y) * size.height

                        // Tambahkan lingkaran kecil untuk setiap grid point
                        context.fill(
                            Path(ellipseIn: CGRect(x: x - cellWidth / 2, y: y - cellHeight / 2, width: cellWidth, height: cellHeight)),
                            with: .color(color)
                        )
                    }
                }
            }
        }
    }
}

// Preview untuk Tampilan
struct BlurredGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BlurredGradientView()
    }
}
