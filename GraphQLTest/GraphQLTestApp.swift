import SwiftUI

@main
struct GraphQLTestApp: App {
    var body: some Scene {
        WindowGroup {
            PeopleView(viewModel: PeopleViewModel())
        }
    }
}
