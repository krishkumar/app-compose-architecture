//
//  CancelBag.swift
//  FootieStatsSwiftUI
//
//  Created by Krishna Kumar on 5/25/21.
//  Copyright © 2021 Magic Ive. All rights reserved.
//
//

import Combine

final class CancelBag {
    fileprivate(set) var subscriptions = Set<AnyCancellable>()
    
    func cancel() {
        subscriptions.removeAll()
    }
}

extension AnyCancellable {
    
    func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}
