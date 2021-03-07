import Foundation
import Dispatch
import ExecutableLauncher

#if Xcode
ExecutablePath.add("/usr/local/bin")
#endif

// MARK: language
// TODO: change alpha to uint24 /uint16 to compare
let outputRootDirectory = URL(fileURLWithPath: #file)
  .deletingLastPathComponent().deletingLastPathComponent()
  .deletingLastPathComponent()

let workingGroup = DispatchGroup()
print(outputRootDirectory.path)

generateCountryCode()

workingGroup.wait()
