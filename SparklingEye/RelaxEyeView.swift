//
//  RelaxEyeView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/13.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct RelaxEyeView: View {
    @State private var testAnimation: Bool = true
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)).opacity(0.5), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1)).opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                            .shadow(color: Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)), radius: 5, x: 0, y: 7)
                            .shadow(color: Color(#colorLiteral(red: 0.2705882353, green: 0.3254901961, blue: 0.3921568627, alpha: 1)).opacity(0.5), radius: 3.5, x: 0.0, y: 11)
                            .overlay(
                                HStack {
                                    Circle()
                                        .frame(width:52, height: 52)
                                        .foregroundColor(Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)))
                                        .shadow(color: Color(#colorLiteral(red: 0.6431372549, green: 0.9333333333, blue: 1, alpha: 1)), radius: 2, x: 0, y: 0)
                                        .offset(x: 2)
                                        .offset(x: testAnimation ? 45 : 0)
                                    Spacer()
                                }
                            )
                    }
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 104, height: 104)
                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                            
                            .shadow(color: Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)), radius: 5, x: 0, y: 7)
                            .shadow(color: Color(#colorLiteral(red: 0.2705882353, green: 0.3254901961, blue: 0.3921568627, alpha: 1)).opacity(0.5), radius: 3.5, x: 0.0, y: 11)
                            
                            .overlay(
                                HStack {                                    
                                    Circle()
                                        .frame(width:52, height: 52)
                                        .foregroundColor(Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)))
                                        .shadow(color: Color(#colorLiteral(red: 0.6431372549, green: 0.9333333333, blue: 1, alpha: 1)), radius: 2, x: 0, y: 0)
                                        .offset(x: 2)
                                        .offset(x: testAnimation ? 45 : 0)
                                    Spacer()
                                }
                            )
                            
                    }
                }
                .padding()
                .padding()
                .padding(8)
                Text("向左看")
                    .foregroundColor(Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)).opacity(0.3))
                    .font(.system(size: 45, weight: .medium))
                Spacer()
                
                ZStack {
                    Image("circleGroup")
                        .resizable()
                        .aspectRatio(236 / 236, contentMode: .fit)
                        .frame(width: 236, height: 236)
                        .overlay(
                            Text("5")
                                .font(.system(size: 75, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)).opacity(0.5))
                        )
                    
                }
                Spacer()
                Spacer()
            }
            .padding()
            .onAppear {
                DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
                    withAnimation(Animation.easeInOut(duration: 1)) {
                        testAnimation.toggle()
                    }
                }
            }
        }
    }
}

struct RelaxEyeView_Previews: PreviewProvider {
    static var previews: some View {
        RelaxEyeView()
    }
}
