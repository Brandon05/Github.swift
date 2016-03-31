//
//  Helper.swift
//  GithubSwift
//
//  Created by Khoa Pham on 29/03/16.
//  Copyright © 2016 Hyper Interaktiv AS. All rights reserved.
//

import Foundation
import Quick

class DummySpec: QuickSpec {}

struct Helper {
  static func read(fileName: String) -> NSData {
    let path = NSBundle(forClass: DummySpec().dynamicType).pathForResource(fileName, ofType: "json")!
    return NSData(contentsOfFile: path)!
  }
}

public extension XCTestCase {
  public func async(action: (XCTestExpectation) -> Void) {
    let expectation = self.expectationWithDescription("")
    
    action(expectation)
    
    self.waitForExpectationsWithTimeout(5, handler: nil)
  }
}