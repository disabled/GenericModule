//
//  Copyright © 2021 Rosberry. All rights reserved.
//

@MainActor
public protocol ModulePresenter {
    associatedtype State
    associatedtype View: GenericModule.View
    associatedtype ViewModel: GenericModule.ViewModel
    associatedtype Dependencies
    associatedtype Output
    associatedtype Input
    associatedtype ViewModelDelegate

    var output: Output? { get }

    init(state: State, dependencies: Dependencies)
    func makeViewModelDelegate() -> ViewModelDelegate
}
