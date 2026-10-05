//
// HackerNews
// Copyright © 2024 Nikita Vasilev. All rights reserved.
//

import Blade

extension Page {
    func map<U: Equatable>(_ closure: @escaping (T) throws -> U) rethrows -> Page<U> {
        let items = try items.map { try closure($0) }
        return Page<U>(
            items: items,
            hasMoreData: hasMoreData
        )
    }

    func compactMap<U: Equatable>(_ closure: @escaping (T) throws -> U?) rethrows -> Page<U> {
        let items = try items.compactMap { try closure($0) }
        return Page<U>(
            items: items,
            hasMoreData: hasMoreData
        )
    }
}
