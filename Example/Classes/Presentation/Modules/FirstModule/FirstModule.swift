//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import Foundation
import GenericModule

@MainActor
protocol FirstModuleInput {
    func doSomeSpecificStuff()
}

@MainActor
protocol FirstModuleOutput {
    func firstModuleOpenSecond(_ moduleInput: FirstModuleInput)
    func firstModuleOpenThird(_ moduleInput: FirstModuleInput)
}

final class FirstModule: Module<FirstPresenter> {

}
