//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import Foundation
import GenericModule

@MainActor
@objc protocol ThirdModuleInput {
}

@MainActor
protocol ThirdModuleOutput {
    func thirdModuleWantsToClose(_ moduleInput: ThirdModuleInput)
}

final class ThirdModule: Module<ThirdPresenter> {
}
