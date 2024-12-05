//
//  HomeView.swift
//  PracStepCount
//
//  Created by James on 12/4/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var store: HomeStore
    
    init(store: HomeStore) {
        self.store = store
    }
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 40)
                VStack(spacing: 12) {
                    CardView(
                        title: "HealthKit",
                        stepCount: "\(Int(store.state.healthKitStepCount))"
                    )
                    CardView(
                        title: "Pedometer",
                        stepCount: "\(Int(store.state.pedometerStepCount))"
                    )
                }
                Spacer()
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    HomeView(store: HomeStore(state: HomeState()))
}
