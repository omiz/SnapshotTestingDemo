//
//  Created by Omar Allaham on 8/23/22.
//

import XCTest
@testable import SnapshotTesting
import SwiftUI
import UIKit

final class SwiftUIViewSnapshotRecordingTests: XCTestCase {

    func testExample() throws {
        let view = SwiftUIView()
        let sut = makeSUT(for: view)

        record(
            snapshot: sut.snapshot(for: .iPhone13(style: .light)),
               named: "SAMPLE_VIEW_WITH_CONTENT_light"
        )

        record(
            snapshot: sut.snapshot(for: .iPhone13(style: .dark)),
            named: "SAMPLE_VIEW_WITH_CONTENT_dark"
        )

        record(
            snapshot: sut.snapshot(
                for: .iPhone13(style: .light,
                               contentSize: .extraExtraExtraLarge)
            ),
            named: "SAMPLE_VIEW_WITH_CONTENT_light_extraExtraExtraLarge")
    }

    private func makeSUT<V: View>(for view: V) -> UIViewController {
        let controller = UIHostingController(rootView: view)
        controller.loadViewIfNeeded()
        return controller
    }
}
