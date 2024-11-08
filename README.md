Presumed bug in https://github.com/pointfreeco/swift-snapshot-testing.git reproducer project.

# Setup

This package has an executable target that just prints the description of a struct `Hello`.

The library is used to make this struct availabe for an inlin and a to file snapshot test.

The problem does not happen in xcode, but in vscode or when run from the terminal using `swift test` it does work for snapshots to a file, but fails to update the inline snapshots.

# Problem

Alter the text in the inline test and remove the snapshot file.

> Note: tests are set to update for all fails and or missing snapshots.

When you run `swift test` in terminal you would expect both inline and file snapshots to be updated, but only the file snapshot is updated.

Workaround is to run `xcodebuild -scheme swift-snapshot-xcodebuild test -destination "platform=macOS" -quiet` to update both inline and file snapshots.

But this workaround makes working with vs code impossible. I guess because that uses `swift test` under the hood?
