import Apollo
import Foundation
import StarWarsAPI


// MARK: - Objects simplification

typealias Planet = PlanetasQuery.Data.AllPlanets.Planet

// MARK: - PlanetViewModelProtocol

protocol PlanetViewModelProtocol: ObservableObject {
    var planetas: [Planet] { get }
}

// MARK: - PlanetViewModel

class PlanetViewModel: PlanetViewModelProtocol {

    // MARK: Lifecycle

    init() {
        apolloClient.fetch(query: PlanetasQuery(), queue: DispatchQueue.main) { [weak self] result in
            guard let data = try? result.get().data else { return }
            self?.planetas = data.allPlanets?.planets?.compactMap({ $0 }) ?? []
        }
    }

    // MARK: Internal

    @Published var planetas: [Planet] = []
    let apolloClient = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
}
