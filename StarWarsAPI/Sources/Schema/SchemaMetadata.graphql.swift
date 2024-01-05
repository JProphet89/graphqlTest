// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == StarWarsAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == StarWarsAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == StarWarsAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == StarWarsAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Root": return StarWarsAPI.Objects.Root
    case "PlanetsConnection": return StarWarsAPI.Objects.PlanetsConnection
    case "Planet": return StarWarsAPI.Objects.Planet
    case "Film": return StarWarsAPI.Objects.Film
    case "Person": return StarWarsAPI.Objects.Person
    case "Species": return StarWarsAPI.Objects.Species
    case "Starship": return StarWarsAPI.Objects.Starship
    case "Vehicle": return StarWarsAPI.Objects.Vehicle
    case "PeopleConnection": return StarWarsAPI.Objects.PeopleConnection
    case "FilmsConnection": return StarWarsAPI.Objects.FilmsConnection
    case "FilmPlanetsConnection": return StarWarsAPI.Objects.FilmPlanetsConnection
    case "PlanetResidentsConnection": return StarWarsAPI.Objects.PlanetResidentsConnection
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
