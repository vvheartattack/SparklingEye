//
//  RingView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/12.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var percentage: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
                .frame(width: 44, height: 44)
            
            Circle()
                .trim(from: 0.0, to: percentage)
                .stroke(Color(.white),
//                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7730026841, green: 1, blue: 0.9720677733, alpha: 1)), Color(#colorLiteral(red: 0.4782336354, green: 0.7739011645, blue: 0.7504651546, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0)
                )
                .rotationEffect(Angle(degrees: -90))
                .frame(width: 44, height: 44)
//                .shadow(color: Color(#colorLiteral(red: 0.831372549, green: 0.0862745098, blue: 0.9529411765, alpha: 1)).opacity(0.2), radius: 4, x: 0, y: -4)
            HStack(spacing: 0) {
                Text("\(Int(percentage * 100))")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("%")
                    .foregroundColor(.white)
                    .font(.system(size:8))
                    .fontWeight(.bold)
            }
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(percentage: 0.85)
    }
}
