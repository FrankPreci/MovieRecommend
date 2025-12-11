import SwiftUI

struct ContentView: View {
    @EnvironmentObject var movieStore: MovieStore

    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {

                Text("Welcome to Movie Recommender")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10)

                NavigationLink(destination: GenreSelect().environmentObject(movieStore)) { // ✅ pass environment object
                    Text("Click to Start")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 40)

                Spacer()
            }
            .padding(.top, 100)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(MovieStore())
}
