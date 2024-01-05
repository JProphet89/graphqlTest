import Apollo
import Foundation
import StarWarsAPI

// MARK: - Objects simplification
typealias Person = PersonQuery.Data.AllPeople.Person

// MARK: - PeopleViewModelProtocol

protocol PeopleViewModelProtocol: ObservableObject {
    var planetas: [Person] { get }
}

// MARK: - PeopleViewModel

class PeopleViewModel: PeopleViewModelProtocol {

    // MARK: Lifecycle

    init() {
        apolloClient.fetch(query: PersonQuery(), queue: DispatchQueue.main) { [weak self] result in
            guard let data = try? result.get().data else { return }
            self?.planetas = data.allPeople?.people?.compactMap({ $0 }) ?? []
        }
    }

    // MARK: Internal

    @Published var planetas: [Person] = []
    let apolloClient = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
}
