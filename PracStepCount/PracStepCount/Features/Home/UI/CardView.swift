//
//  CardView.swift
//  PracStepCount
//
//  Created by James on 12/4/24.
//

import SwiftUI

struct CardView: View {
    let title: String
    let stepCount: String
    
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline, spacing: 3) {
                Text(title)
                    .font(.light20)
                    .foregroundColor(.BLACK)
                Spacer()
            }
            Spacer()
            HStack(alignment: .firstTextBaseline, spacing: 3) {
                Spacer()
                Text(stepCount)
                    .font(.regular24)
                    .foregroundColor(.PRIMARY)
                Text("Steps")
                    .font(.light16)
                    .foregroundColor(.GRAY)
            }
        }
        .frame(height: 80)
        .padding(.all, 12)
        .background(Color.LIGHT_GRAY)
        .cornerRadius(8)
    }
}

#Preview {
    CardView(title: "HealthKit", stepCount: "20000")
}
