// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PersonQuery: GraphQLQuery {
  public static let operationName: String = "PersonQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query PersonQuery { allPeople { __typename people { __typename id name } } }"#
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allPeople", AllPeople?.self),
    ] }

    public var allPeople: AllPeople? { __data["allPeople"] }

    /// AllPeople
    ///
    /// Parent Type: `PeopleConnection`
    public struct AllPeople: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.PeopleConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("people", [Person?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var people: [Person?]? { __data["people"] }

      /// AllPeople.Person
      ///
      /// Parent Type: `Person`
      public struct Person: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Person }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", StarWarsAPI.ID.self),
          .field("name", String?.self),
        ] }

        /// The ID of an object
        public var id: StarWarsAPI.ID { __data["id"] }
        /// The name of this person.
        public var name: String? { __data["name"] }
      }
    }
  }
}
