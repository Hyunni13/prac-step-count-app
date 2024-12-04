//
//  CardView.swift
//  PracStepCount
//
//  Created by James on 12/4/24.
//

import SwiftUI

struct StepCountCardView: View {
    let stepCount: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 0) {
            Text(stepCount)
                .font(.system(size: 20))
            Spacer()
                .frame(width: 5)
            Text("걸음")
            Spacer()
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 10)
        .background(Color.gray)
        .cornerRadius(5)
    }
}

#Preview {
    StepCountCardView(stepCount: "20000")
}
