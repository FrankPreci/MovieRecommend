import SwiftUI

struct MovieDetailView: View {
    let movie: Movie

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if !movie.posterImageName.isEmpty {
                    Image(movie.posterImageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                }

                Text(movie.title)
                    .font(.largeTitle)
                    .bold()

                Text("\(movie.genre.rawValue) • ⭐️ \(movie.rating, specifier: "%.1f")")
                    .font(.headline)
                    .foregroundStyle(.secondary)

                Divider()

                Text(movie.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle(movie.title)
    }
}
