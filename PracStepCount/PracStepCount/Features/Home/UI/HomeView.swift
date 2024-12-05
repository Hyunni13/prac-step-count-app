//
//  HomeView.swift
//  PracStepCount
//
//  Created by James on 12/4/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 40)
            HStack {
                Text("Step Count")
                    .font(Font.regular24)
                Spacer()
            }
            Spacer()
                .frame(height: 37)
            VStack(spacing: 12) {
                StepCountCardView(stepCount: "20000")
                StepCountCardView(stepCount: "20000")
            }
            Spacer()
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

#Preview {
    HomeView()
}
