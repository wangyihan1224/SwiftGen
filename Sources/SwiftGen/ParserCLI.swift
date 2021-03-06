//
//  ParserCLI.swift
//  swiftgen
//
//  Created by Olivier Halligon on 01/10/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import SwiftGenKit

/// Describes the Command-Line Interface for each parser subcommands
public struct ParserCLI {
  public let parserType: Parser.Type
  public let name: String
  public let description: String
  public let pathDescription: String
}

// MARK: - All Parser Commands

let allParserCommands: [ParserCLI] = [
  .init(
    parserType: AssetsCatalog.Parser.self,
    name: "xcassets",
    description: "generate code for items in your Assets Catalog(s)",
    pathDescription: "Asset Catalog file(s)."
  ),
  .init(
    parserType: Colors.Parser.self,
    name: "colors",
    description: "generate code for color palettes",
    pathDescription: "Colors.txt|.clr|.xml|.json file(s) to parse."
  ),
  .init(
    parserType: Strings.Parser.self,
    name: "strings",
    description: "generate code for your Localizable.strings file(s)",
    pathDescription: "Strings file(s) to parse."
  ),
  .init(
    parserType: Storyboards.Parser.self,
    name: "storyboards",
    description: "generate code for your storyboard scenes and segues",
    pathDescription: "Directory to scan for .storyboard files. Can also be a path to a single .storyboard"
  ),
  .init(
    parserType: Fonts.Parser.self,
    name: "fonts",
    description: "generate code for your fonts",
    pathDescription: "Directory(ies) to parse."
  )
]
