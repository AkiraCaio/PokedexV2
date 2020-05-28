// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#58abf6"></span>
  /// Alpha: 100% <br/> (0x58abf6ff)
  internal static let baseScreenCategoriasBackgroundColorAbilities = ColorName(rgbaValue: 0x58abf6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffce4b"></span>
  /// Alpha: 100% <br/> (0xffce4bff)
  internal static let baseScreenCategoriasBackgroundColorItems = ColorName(rgbaValue: 0xffce4bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7c538c"></span>
  /// Alpha: 100% <br/> (0x7c538cff)
  internal static let baseScreenCategoriasBackgroundColorLocations = ColorName(rgbaValue: 0x7c538cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f7786b"></span>
  /// Alpha: 100% <br/> (0xf7786bff)
  internal static let baseScreenCategoriasBackgroundColorMoves = ColorName(rgbaValue: 0xf7786bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4fc1a6"></span>
  /// Alpha: 100% <br/> (0x4fc1a6ff)
  internal static let baseScreenCategoriasBackgroundColorPokedex = ColorName(rgbaValue: 0x4fc1a6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b1736c"></span>
  /// Alpha: 100% <br/> (0xb1736cff)
  internal static let baseScreenCategoriasBackgroundColorTypeCharts = ColorName(rgbaValue: 0xb1736cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#77c4fe"></span>
  /// Alpha: 100% <br/> (0x77c4feff)
  internal static let baseScreenCategoriasElipseBackgroundColorAbilities = ColorName(rgbaValue: 0x77c4feff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a06eb4"></span>
  /// Alpha: 100% <br/> (0xa06eb4ff)
  internal static let baseScreenCategoriasElipseBackgroundColorLocations = ColorName(rgbaValue: 0xa06eb4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff8d82"></span>
  /// Alpha: 100% <br/> (0xff8d82ff)
  internal static let baseScreenCategoriasElipseBackgroundColorMoves = ColorName(rgbaValue: 0xff8d82ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6af3ca"></span>
  /// Alpha: 100% <br/> (0x6af3caff)
  internal static let baseScreenCategoriasElipseBackgroundColorPokedex = ColorName(rgbaValue: 0x6af3caff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d1938c"></span>
  /// Alpha: 100% <br/> (0xd1938cff)
  internal static let baseScreenCategoriasElipseBackgroundColorTypeCharts = ColorName(rgbaValue: 0xd1938cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f5f5f5"></span>
  /// Alpha: 100% <br/> (0xf5f5f5ff)
  internal static let baseScreenMainBackgroundColor = ColorName(rgbaValue: 0xf5f5f5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#303943"></span>
  /// Alpha: 100% <br/> (0x303943ff)
  internal static let baseScreenMainTextColor = ColorName(rgbaValue: 0x303943ff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

// swiftlint:disable operator_usage_whitespace
internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
    let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
    let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
    let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
// swiftlint:enable operator_usage_whitespace

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
