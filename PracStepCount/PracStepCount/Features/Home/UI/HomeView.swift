//
//  HomeView.swift
//  PracStepCount
//
//  Created by James on 12/4/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 40)
                VStack(spacing: 12) {
                    CardView(title: "HealthKit", stepCount: "20000")
                    CardView(title: "Pedometer", stepCount: "20000")
                }
                Spacer()
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    HomeView()
}
