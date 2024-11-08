import Testing
import InlineSnapshotTesting
import SnapshotXcodeBuild

@Test func toFile() {
    // This will correctly update when ran from commandline with `swift test`
    withSnapshotTesting(record: snapshotConfig.record, diffTool: snapshotConfig.diffTool) {
        assertSnapshot(of: "\(Hello(name: "Hello World"))", as: .lines)
    }
}
