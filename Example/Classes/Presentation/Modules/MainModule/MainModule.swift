//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import GenericModule

@MainActor
protocol MainModuleOutput {
    func mainModuleOpenFirst(_ moduleInput: MainModuleInput)
    func mainModuleOpenSecond(_ moduleInput: MainModuleInput)
    func mainModuleOpenThird(_ moduleInput: MainModuleInput)
    func mainModuleOpenFourth(_ moduleInput: MainModuleInput)
}

@MainActor
protocol MainModuleInput {

}

final class MainModule: Module<MainPresenter> {
}
