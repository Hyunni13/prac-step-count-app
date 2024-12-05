//
//  HomeStore.swift
//  PracStepCount
//
//  Created by James on 12/5/24.
//

import Foundation

final class HomeStore: ObservableObject {
    
    var state: HomeState
    
    init(state: HomeState) {
        self.state = state
    }
    
}
