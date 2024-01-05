import SwiftUI

struct GraphQLView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                NavigationLink(destination: PlanetView(viewModel: PlanetViewModel())) {
                    Button(action: {}, label: {
                        Text("Planets")
                    })
                }
                Spacer()
                NavigationLink(destination: PeopleView(viewModel: PeopleViewModel())) {
                    Button(action: {}, label: {
                        Text("People")
                    })
                }
                Spacer()
            }
        }
    }
}

#Preview {
    GraphQLView()
}
