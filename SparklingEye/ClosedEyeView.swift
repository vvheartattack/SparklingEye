//
//  ClosedEyeView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/15.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct ClosedEyeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)).opacity(0.5), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1)).opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                            .offset(y: 15)
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.8985299468, green: 0.9386071563, blue: 0.9162002206, alpha: 1)))
                        
                    }
                    Spacer()
                    ZStack {
                        
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                            .offset(y: 15)
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.8985299468, green: 0.9386071563, blue: 0.9162002206, alpha: 1)))
                            
                    }
                }
                .padding()
                .padding()
                .padding(8)
                .padding(.top, -16)
                Spacer()
                Text("请闭眼\n  6 秒")
                    .foregroundColor(Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)).opacity(0.3))
                    .font(.system(size: 50, weight: .medium, design: .rounded))
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            
            }
            .padding()
        }
    }
}

struct ClosedEyeView_Previews: PreviewProvider {
    static var previews: some View {
        ClosedEyeView()
    }
}
