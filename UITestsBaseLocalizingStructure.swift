//
//  UITestsBaseLocalizingStructure.swift
//  UITests
//
//  Created by Guilherme on 9/16/18.
//  Copyright © 2018. All rights reserved.
//

import Foundation

class LocalizerClass {
  class func localize(string: String, for table: AnyClass) -> String {
    let bundle = Bundle(for: LocalizerClass.self)
    return bundle.localizedString(forKey: string, value: string, table: String(describing: table))
  }
}

protocol BaseUITestProtocol: class {
  /**
   You should represent this associatedtype as an enumerator with a rawValue,
   containing all of the identifiers on your strings file.

   # Usage Example:
   Create a new a strings file, set a lefthand identifier and then give it a value for your string.
   Create a child case in your StringIdentifiers Enum
   and then set the value of this child as your newly created Identifier


       enum StringIdentifiers: String {
          case labelText = "This should be a text"
       }
   */
  associatedtype StringIdentifiers: RawRepresentable

  /**
   You should represent this associatedtype as an enumerator with a rawValue,
   containing all of the elements identifiers within an workflow.

    # Usage Example:
    Set your element accessibility ID (be it on a xib, storyboard or code),
    create a child case in your Elements Enum (lets give it a String rawValue)
    and then set the value of this child as your newly created accessibility ID


       enum Elements: String {
          case button = "ButtonID"
       }
   */
  associatedtype Elements: RawRepresentable

  /// Returns the righthand value for a given StringIdentifier associated value
  ///
  /// - Parameter identifier: StringIdentifier enumerator
  /// - Returns: Righthand string value
  static func stringValue(for identifier: StringIdentifiers) -> String

  /// Returns the accessibility id as a String for a given Element associated value
  ///
  /// - Parameter element: Element enumerator
  /// - Returns: Associated String element identifier
  static func identification(of element: Elements) -> String
}
