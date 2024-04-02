//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import Foundation
import GenericModule

@objc protocol ThirdModuleInput {
}

protocol ThirdModuleOutput {
    func thirdModuleWantsToClose(_ moduleInput: ThirdModuleInput)
}

final class ThirdModule: Module<ThirdPresenter> {
}
