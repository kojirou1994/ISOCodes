import Foundation
import Dispatch
import Executable

#if Xcode
ExecutablePath.set("/usr/local/bin")
#endif

// MARK: language

let outputRootDirectory = URL(fileURLWithPath: #file).deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent()

let workingGroup = DispatchGroup()
print(outputRootDirectory.path)

generateCountryCode()

workingGroup.wait()
