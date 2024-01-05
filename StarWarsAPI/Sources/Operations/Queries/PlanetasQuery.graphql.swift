// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PlanetasQuery: GraphQLQuery {
  public static let operationName: String = "Planetas"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Planetas { allPlanets { __typename planets { __typename id name } } }"#
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allPlanets", AllPlanets?.self),
    ] }

    public var allPlanets: AllPlanets? { __data["allPlanets"] }

    /// AllPlanets
    ///
    /// Parent Type: `PlanetsConnection`
    public struct AllPlanets: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.PlanetsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("planets", [Planet?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var planets: [Planet?]? { __data["planets"] }

      /// AllPlanets.Planet
      ///
      /// Parent Type: `Planet`
      public struct Planet: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Planet }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", StarWarsAPI.ID.self),
          .field("name", String?.self),
        ] }

        /// The ID of an object
        public var id: StarWarsAPI.ID { __data["id"] }
        /// The name of this planet.
        public var name: String? { __data["name"] }
      }
    }
  }
}
