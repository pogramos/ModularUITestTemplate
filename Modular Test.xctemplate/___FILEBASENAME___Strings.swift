//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

final class ___VARIABLE_productName___Strings: BaseUITestProtocol {
  // setup your identifiers here,
  // start by replacing the default identifier case with your own
  enum StringIdentifiers: String {
    case identifier
  }
  // Reference your UI Elements inside of this enumerator and set its accessibility ID as the value
  enum Elements: String {
    case element = "AccessibilityId"
  }

  static func stringValue(for identifier: ___VARIABLE_productName___Strings.StringIdentifiers) -> String {
    return LocalizerClass.localize(string: identifier.rawValue, for: self)
  }

  static func identification(of element: ___VARIABLE_productName___Strings.Elements) -> String {
    return element.rawValue
  }
}
