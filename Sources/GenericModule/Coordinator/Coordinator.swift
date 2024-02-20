//
//  Copyright © 2020 Rosberry. All rights reserved.
//

import UIKit

open class Coordinator<V: UIViewController>: NSObject {
    open var rootViewController: V

    public init(rootViewController: V) {
        self.rootViewController = rootViewController
    }
}
