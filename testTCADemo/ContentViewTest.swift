//
//  ContentViewTest.swift
//  testTCADemo
//
//  Created by chongzhang on 2026/4/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentViewTest: View {
    let store: StoreOf<CounterFeature>

    var body: some View {
        VStack {
            HStack {
                Button("−") {
                    store.send(.decrementButtonTapped)
                }
                Text("\(store.state.count)").frame(width: 300, height: 50, alignment: .center)
                
                Button("+") {
                    store.send(.incrementButtonTapped)
                }
            }
        }
    }
}

#Preview {
    ContentViewTest(store: Store(initialState: CounterFeature.State()) {
        CounterFeature()
    })
}
