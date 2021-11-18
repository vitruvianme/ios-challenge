import SwiftUI

struct ExerciseRow: View {
    var exercise: Exercise

    var body: some View {
        // TODO: Render the exercise name, thumbnail, a list of muscle groups, and equipment
        EmptyView()
    }
}

struct Exercises: View {
    @State var exercises: [Exercise] = []

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(exercises) {
                    ExerciseRow(exercise: $0)
                }
            }
        }
        .navigationBarTitle("Exercises")
        .task {
            do {
                // TODO: Fetch a list of exercises from the API endpoint
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Exercises()
    }
}
