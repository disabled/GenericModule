//
//  Copyright © 2024 Luma AI. All rights reserved.
//

import UIKit
import Foundation

@MainActor
public class ViewNib {
    public let name: String?
    public let bundle: Bundle?

    public init(name: String?, bundle: Bundle?) {
        self.name = name
        self.bundle = bundle
    }

    public func instantiate(owner: Any?, options: [UINib.OptionsKey: Any]? = nil) -> [Any] {
        guard let name = name else {
            return []
        }

        let source = UINib(nibName: name, bundle: bundle)
        return source.instantiate(withOwner: owner, options: options)
    }

    public func instantiate<T>(owner: Any?, options: [UINib.OptionsKey: Any]? = nil) -> T? {
        guard let name = name else {
            return nil
        }

        let source = UINib(nibName: name, bundle: bundle)
        let contents = source.instantiate(withOwner: owner, options: options)
        for case let object as T in contents {
            return object
        }

        return nil
    }
}
