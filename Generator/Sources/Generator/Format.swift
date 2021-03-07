import Foundation
import ExecutableLauncher

func formatFile(at url: URL) {
  print("Formatting \(url.lastPathComponent)")
  _ = try! AnyExecutable(executableName: "swift-format", arguments: ["-i", url.path])
    .launch(use: TSCExecutableLauncher())
}
