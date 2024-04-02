//
//  Copyright © 2024 Luma AI. All rights reserved.
//

import UIKit

public typealias PresentableModule<P: ModulePresenter> = Module<P> where P.View.ViewModel == P.ViewModel,
                                                                         P.ViewModel.ViewModelDelegate == P.ViewModelDelegate,
                                                                         P.View: UIViewController

open class ModuleCoordinator<M: PresentableModule<P>,
                             P: ModulePresenter,
                             C: ModulePresentationContext>: Coordinator<C.V> {
    private weak var _moduleInput: AnyObject?
    open var moduleInput: P.Input? {
        return _moduleInput as? P.Input
    }

    open var presentationContext: C = .init()

    @discardableResult
    open func start(with state: M.State, dependencies: P.Dependencies) -> M {
        let module = M.init(state: state, dependencies: dependencies, output: self as? P.Output)
        _moduleInput = module.input as AnyObject
        presentationContext.present(module.viewController, in: rootViewController)
        return module
    }
}

open class ModalCoordinator<M: PresentableModule<P>,
                            P: ModulePresenter>: ModuleCoordinator<M, P, ModalPresentationContext> {
    //
}

open class NavigationCoordinator<M: PresentableModule<P>,
                                 P: ModulePresenter>: ModuleCoordinator<M, P, NavigationPresentationContext> {
    //
}

open class ModalNavigationCoordinator<M: PresentableModule<P>,
                                      P: ModulePresenter>: ModuleCoordinator<M, P, ModalNavigationPresentationContext> {
    //
}
