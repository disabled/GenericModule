//
//  Copyright © 2020 Rosberry. All rights reserved.
//

import GenericModule
import UIKit

final class FirstCoordinator: NavigationCoordinator<FirstModule, FirstPresenter> {
    //
}

extension FirstCoordinator: FirstModuleOutput {
    func firstModuleOpenSecond(_ moduleInput: FirstModuleInput) {
        let viewController = SecondModule(state: SecondState(), dependencies: Services).viewController
        rootViewController.pushViewController(viewController, animated: true)
        moduleInput.doSomeSpecificStuff()
    }

    func firstModuleOpenThird(_ moduleInput: FirstModuleInput) {
        let state = TitleTextState(title: "Third",
                                   text: "This is 3-rd view controller")

        let coordinator = ThirdCoordinator(rootViewController: rootViewController)
        coordinator.output = self
        coordinator.start(with: state, dependencies: Services)
        moduleInput.doSomeSpecificStuff()
    }
}

extension FirstCoordinator: ThirdCoordinatorOutput {
    func thirdCoordinatorWantsToClose() {
        rootViewController.dismiss(animated: true, completion: nil)
        moduleInput?.doSomeSpecificStuff()
    }
}
