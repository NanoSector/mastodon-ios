//
//  CachedThreadViewModel.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-4-12.
//

import Foundation
import CoreDataStack

final class CachedThreadViewModel: ThreadViewModel {
    init(context: AppContext, status: Status) {
        let threadContext = StatusItem.Thread.Context(status: .init(objectID: status.objectID))
        super.init(
            context: context,
            optionalRoot: .root(context: threadContext)
        )
    }
}
