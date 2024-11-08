import InlineSnapshotTesting
import SnapshotXcodeBuild
import Testing
import XCTest

@Test func inline() {
  // Will not update when ran from terminal with `swift test` or when using visual studio code to run tests
  // Running `xcodebuild -scheme swift-snapshot-xcodebuild test -destination "platform=macOS" -quiet` from
  // terminal works however.
  withSnapshotTesting(record: snapshotConfig.record, diffTool: snapshotConfig.diffTool) {
    assertInlineSnapshot(of: "\(Hello(name: "Hello World"))", as: .lines) {
      """
      Hello(name: "Hello World")
      """
    }
  }
}

final class XCTInline: XCTestCase {
  func testInline() {
    // Will not update when ran from terminal with `swift test` or when using visual studio code to run tests
    // Running `xcodebuild -scheme swift-snapshot-xcodebuild test -destination "platform=macOS" -quiet` from
    // terminal works however.
    withSnapshotTesting(record: snapshotConfig.record, diffTool: snapshotConfig.diffTool) {
      assertInlineSnapshot(of: "\(Hello(name: "Hello World"))", as: .lines) {
        """
        Hello(name: "Hello World")
        """
      }
    }
  }
}
