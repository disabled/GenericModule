//
//  Copyright © 2021 Rosberry. All rights reserved.
//

@MainActor
open class GenericViewModelDelegate<State> {
    public let state: State

    public init(state: State) {
        self.state = state
    }
}
