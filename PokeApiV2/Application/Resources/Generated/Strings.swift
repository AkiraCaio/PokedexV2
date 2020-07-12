// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {

  internal enum BaseScreen {
    internal enum Categoria {
      internal enum Titulo {
        /// Abilities
        internal static let abilities = L10n.tr("Localizable", "baseScreen.categoria.titulo.abilities")
        /// Items
        internal static let items = L10n.tr("Localizable", "baseScreen.categoria.titulo.items")
        /// Locations
        internal static let locations = L10n.tr("Localizable", "baseScreen.categoria.titulo.locations")
        /// Moves
        internal static let moves = L10n.tr("Localizable", "baseScreen.categoria.titulo.moves")
        /// Pokedex
        internal static let pokedex = L10n.tr("Localizable", "baseScreen.categoria.titulo.pokedex")
        /// Type Charts
        internal static let typeCharts = L10n.tr("Localizable", "baseScreen.categoria.titulo.typeCharts")
      }
    }
    internal enum SearchBar {
      /// Search Pokemon, Move, Ability etc
      internal static let placeholder = L10n.tr("Localizable", "baseScreen.searchBar.placeholder")
    }
    internal enum Title {
      /// What Pokemon\nare you looking for?
      internal static let firstSection = L10n.tr("Localizable", "baseScreen.title.firstSection")
      /// Pokémon News
      internal static let secoundSection = L10n.tr("Localizable", "baseScreen.title.secoundSection")
      /// View All
      internal static let viewAll = L10n.tr("Localizable", "baseScreen.title.viewAll")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
