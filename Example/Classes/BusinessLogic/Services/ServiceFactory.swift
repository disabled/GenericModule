//
//  Copyright © 2020 Rosberry. All rights reserved.
//

// swiftlint:disable:next identifier_name
let Services = ServiceFactory()

final class ServiceFactory: Sendable, HasTestService {
    let testService: TestService = TestServiceImpl()
}
