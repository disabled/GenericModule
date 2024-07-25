//
//  Copyright © 2020 Rosberry. All rights reserved.
//

@MainActor
public protocol ViewOutput {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}
