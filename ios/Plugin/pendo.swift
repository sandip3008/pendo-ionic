import Foundation

@objc public class pendo: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
