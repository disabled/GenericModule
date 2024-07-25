//
//  Copyright © 2020 Rosberry. All rights reserved.
//

@MainActor
public protocol ViewModel {
    associatedtype ViewModelDelegate
    init(delegate: ViewModelDelegate)
}
