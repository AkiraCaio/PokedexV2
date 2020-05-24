// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSFont
  internal typealias Font = NSFont
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIFont
  internal typealias Font = UIFont
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Fonts

// swiftlint:disable identifier_name line_length type_body_length
internal enum FontFamily {
  internal enum CircularStd {
    internal static let black = FontConvertible(name: "CircularStd-Black", family: "Circular Std", path: "CircularStd-Black.ttf")
    internal static let blackItalic = FontConvertible(name: "CircularStd-BlackItalic", family: "Circular Std", path: "CircularStd-BlackItalic.ttf")
    internal static let bold = FontConvertible(name: "CircularStd-Bold", family: "Circular Std", path: "CircularStd-Bold.ttf")
    internal static let boldItalic = FontConvertible(name: "CircularStd-BoldItalic", family: "Circular Std", path: "CircularStd-BoldItalic.ttf")
    internal static let book = FontConvertible(name: "CircularStd-Book", family: "Circular Std", path: "CircularStd-Book.ttf")
    internal static let bookItalic = FontConvertible(name: "CircularStd-BookItalic", family: "Circular Std", path: "CircularStd-BookItalic.ttf")
    internal static let medium = FontConvertible(name: "CircularStd-Medium", family: "Circular Std", path: "CircularStd-Medium.ttf")
    internal static let mediumItalic = FontConvertible(name: "CircularStd-MediumItalic", family: "Circular Std", path: "CircularStd-MediumItalic.ttf")
    internal static let all: [FontConvertible] = [black, blackItalic, bold, boldItalic, book, bookItalic, medium, mediumItalic]
  }
  internal static let allCustomFonts: [FontConvertible] = [CircularStd.all].flatMap { $0 }
  internal static func registerAllCustomFonts() {
    allCustomFonts.forEach { $0.register() }
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal struct FontConvertible {
  internal let name: String
  internal let family: String
  internal let path: String

  internal func font(size: CGFloat) -> Font! {
    return Font(font: self, size: size)
  }

  internal func register() {
    // swiftlint:disable:next conditional_returns_on_newline
    guard let url = url else { return }
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }

  fileprivate var url: URL? {
    let bundle = Bundle(for: BundleToken.self)
    return bundle.url(forResource: path, withExtension: nil)
  }
}

internal extension Font {
  convenience init!(font: FontConvertible, size: CGFloat) {
    #if os(iOS) || os(tvOS) || os(watchOS)
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    #elseif os(OSX)
    if let url = font.url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      font.register()
    }
    #endif

    self.init(name: font.name, size: size)
  }
}

private final class BundleToken {}
