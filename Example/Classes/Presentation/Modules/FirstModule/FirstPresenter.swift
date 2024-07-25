//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import Foundation
import GenericModule

final class FirstPresenter: Presenter<FirstState,
                                      FirstViewController,
                                      FirstModuleInput,
                                      FirstModuleOutput,
                                      HasTestService> {

    override func viewDidLoad() {
        super.viewDidLoad()

        Task {
            try await Task.sleep(nanoseconds: 1_000_000_000)
            print("I was sleeping for a second but still calling update on main thread, because I'm using MainActor now.")
            update(force: true, animated: true)
        }
    }
}

extension FirstPresenter: FirstViewModelDelegate {
    func makeTitle() -> String {
        state.title
    }
}

extension FirstPresenter: FirstViewOutput {
    func secondButtonEventTriggered() {
        output?.firstModuleOpenSecond(self)
    }

    func thirdButtonEventTriggered() {
        output?.firstModuleOpenThird(self)
    }

    func doSomeSpecificStuff() {
        print("\(self): Yes, I do")
    }
}

extension FirstPresenter: FirstModuleInput {

}
