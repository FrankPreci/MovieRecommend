import SwiftUI

struct GenreSelect: View {
    @EnvironmentObject var movieStore: MovieStore

    @State private var selectedGenres: Set<Genre> = []
    @State private var showAlert = false
    @State private var goToMoviePage = false

    // Work directly with the enum, not Strings
    let genres = Genre.allCases

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {

                HStack {
                    Text("Select a Genre")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Spacer()

                    Button(action: handleContinue) {
                        Text("Continue")
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }

                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(genres) { genre in
                            GenreButton(
                                title: genre.rawValue,
                                isSelected: selectedGenres.contains(genre),
                                action: { toggleSelection(for: genre) }
                            )
                        }
                    }
                    .padding(.vertical)
                }

                Spacer()
            }
            .padding()
            .alert("Please select any of the following", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .navigationDestination(isPresented: $goToMoviePage) {
            MovieRecPage(selectedGenres: Array(selectedGenres))
        }
    }


    // Use Genre here
    func toggleSelection(for genre: Genre) {
        if selectedGenres.contains(genre) {
            selectedGenres.remove(genre)
        } else {
            selectedGenres.insert(genre)
        }
    }

    func handleContinue() {
        if selectedGenres.isEmpty {
            showAlert = true
        } else {
            goToMoviePage = true
        }
    }
}

struct GenreButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                    .foregroundColor(isSelected ? .blue : .gray)
                    .font(.title2)

                Text(title)
                    .font(.title3)
                    .foregroundColor(.primary)

                Spacer()
            }
            .padding()
            .background(Color(.systemGray))
            .cornerRadius(10)
        }
    }
}
