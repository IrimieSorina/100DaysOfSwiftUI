//
//  testInfoPlistUITestsLaunchTests.swift
//  testInfoPlistUITests
//
//  Created by Sebastian Vidrea on 15.06.2022.
//

import XCTest

class testInfoPlistUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let schemeName = Bundle.main.infoDictionary!["SCHEME_NAME"] as? String
        print(schemeName)


        var config: [String: Any]?

        if let infoPlistPath = Bundle.main.url(forResource: "Info", withExtension: "plist") {
            do {
                let infoPlistData = try Data(contentsOf: infoPlistPath)

                if let dict = try PropertyListSerialization.propertyList(from: infoPlistData, options: [], format: nil) as? [String: Any] {
                    config = dict
                }
            } catch {
                print(error)
            }
        }

        print(config?["SCHEME_NAME"])
    }
}
