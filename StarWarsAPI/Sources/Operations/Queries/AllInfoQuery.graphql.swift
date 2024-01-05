// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllInfoQuery: GraphQLQuery {
  public static let operationName: String = "AllInfo"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllInfo { allFilms { __typename films { __typename id title planetConnection { __typename planets { __typename name residentConnection { __typename residents { __typename id name eyeColor } } } } } } }"#
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allFilms", AllFilms?.self),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.FilmsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("films", [Film?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? { __data["films"] }

      /// AllFilms.Film
      ///
      /// Parent Type: `Film`
      public struct Film: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Film }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", StarWarsAPI.ID.self),
          .field("title", String?.self),
          .field("planetConnection", PlanetConnection?.self),
        ] }

        /// The ID of an object
        public var id: StarWarsAPI.ID { __data["id"] }
        /// The title of this film.
        public var title: String? { __data["title"] }
        public var planetConnection: PlanetConnection? { __data["planetConnection"] }

        /// AllFilms.Film.PlanetConnection
        ///
        /// Parent Type: `FilmPlanetsConnection`
        public struct PlanetConnection: StarWarsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.FilmPlanetsConnection }
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

          /// AllFilms.Film.PlanetConnection.Planet
          ///
          /// Parent Type: `Planet`
          public struct Planet: StarWarsAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Planet }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("name", String?.self),
              .field("residentConnection", ResidentConnection?.self),
            ] }

            /// The name of this planet.
            public var name: String? { __data["name"] }
            public var residentConnection: ResidentConnection? { __data["residentConnection"] }

            /// AllFilms.Film.PlanetConnection.Planet.ResidentConnection
            ///
            /// Parent Type: `PlanetResidentsConnection`
            public struct ResidentConnection: StarWarsAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.PlanetResidentsConnection }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("residents", [Resident?]?.self),
              ] }

              /// A list of all of the objects returned in the connection. This is a convenience
              /// field provided for quickly exploring the API; rather than querying for
              /// "{ edges { node } }" when no edge data is needed, this field can be be used
              /// instead. Note that when clients like Relay need to fetch the "cursor" field on
              /// the edge to enable efficient pagination, this shortcut cannot be used, and the
              /// full "{ edges { node } }" version should be used instead.
              public var residents: [Resident?]? { __data["residents"] }

              /// AllFilms.Film.PlanetConnection.Planet.ResidentConnection.Resident
              ///
              /// Parent Type: `Person`
              public struct Resident: StarWarsAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Person }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("id", StarWarsAPI.ID.self),
                  .field("name", String?.self),
                  .field("eyeColor", String?.self),
                ] }

                /// The ID of an object
                public var id: StarWarsAPI.ID { __data["id"] }
                /// The name of this person.
                public var name: String? { __data["name"] }
                /// The eye color of this person. Will be "unknown" if not known or "n/a" if the
                /// person does not have an eye.
                public var eyeColor: String? { __data["eyeColor"] }
              }
            }
          }
        }
      }
    }
  }
}
