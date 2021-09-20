//
//  Copyright © 2021 Rosberry. All rights reserved.
//

import GenericModule

typealias FourthViewController = TitleTextViewController<Any, TitleTextViewOutput>

final class FourthPresenter: Presenter<TitleTextState, FourthViewController, Any, Any, Any> {
}

extension FourthPresenter: TitleTextViewOutput {
    func closeEventTriggered() {
    }
}
