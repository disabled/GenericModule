//
//  ThirdCoordinator.swift
//  GenericModuleExample
//
//  Created by Anton Kormakov on 02.04.2024.
//  Copyright © 2024 Rosberry. All rights reserved.
//

import GenericModule

@MainActor
protocol ThirdCoordinatorOutput: AnyObject {
    func thirdCoordinatorWantsToClose()
}

final class ThirdCoordinator: ModalNavigationCoordinator<ThirdModule, ThirdPresenter> {
    weak var output: ThirdCoordinatorOutput?
}

extension ThirdCoordinator: ThirdModuleOutput {
    func thirdModuleWantsToClose(_ moduleInput: ThirdModuleInput) {
        output?.thirdCoordinatorWantsToClose()
    }
}
