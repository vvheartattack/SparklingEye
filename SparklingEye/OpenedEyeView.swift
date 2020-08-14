//
//  OpenedEyeView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/15.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct OpenedEyeView: View {
    var body: some View {
        NavigationView {
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
                                    }
                                )
                                
                        }
                    }
                    .padding()
                    .padding()
                    .padding(8)
                    .offset(y: -45)
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                        Text("   明眸！")
                            .foregroundColor(Color(#colorLiteral(red: 0.537254902, green: 0.6901960784, blue: 0.6823529412, alpha: 1)).opacity(0.6))
                            .font(.system(size: 72, weight: .medium))
                            .padding()
                        Text("放松完毕")
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.4156862745, alpha: 1)).opacity(0.3))
                            .font(.system(size: 45, weight: .medium))
                    }
                    
                    Spacer()
                
                }
                .padding()
            }
        }
    }
}

struct OpenedEyeView_Previews: PreviewProvider {
    static var previews: some View {
        OpenedEyeView()
    }
}
