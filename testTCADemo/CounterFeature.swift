//
//  CounterFeature.swift
//  testTCADemo
//
//  Created by chongzhang on 2026/4/24.
//

import Foundation
import ComposableArchitecture

struct CounterFeature: Reducer {
    @ObservableState
    struct State: Equatable {
        var count: Int = 0
    }

    enum Action: Equatable {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .decrementButtonTapped:
            state.count -= 1
            return .none
        case .incrementButtonTapped:
            state.count += 1
            return .none
        }
    }
}
