//
//  Copyright © 2024 Luma AI. All rights reserved.
//

import UIKit

public protocol ModulePresentationContext {
    associatedtype V: UIViewController
    init()
    func present(_ target: UIViewController, in rootViewController: V)
}

open class ModalPresentationContext: ModulePresentationContext {
    public typealias V = UIViewController

    open var modalPresentationStyle: UIModalPresentationStyle = .overFullScreen
    open var modalTransitionStyle: UIModalTransitionStyle = .coverVertical
    open var animated: Bool = true

    required public init() {}

    open func present(_ target: UIViewController, in rootViewController: V) {
        target.modalPresentationStyle = modalPresentationStyle
        target.modalTransitionStyle = modalTransitionStyle
        rootViewController.present(target, animated: animated)
    }
}

open class ModalNavigationPresentationContext: ModalPresentationContext {
    open var navigationController: UINavigationController = .init()

    open override func present(_ target: UIViewController, in rootViewController: ModalPresentationContext.V) {
        navigationController.viewControllers = [target]
        super.present(navigationController, in: rootViewController)
    }
}

open class NavigationPresentationContext: ModulePresentationContext {
    public typealias V = UINavigationController

    open var animated: Bool = true

    required public init() {}

    open func present(_ target: UIViewController, in rootViewController: V) {
        rootViewController.pushViewController(target, animated: animated)
    }
}
