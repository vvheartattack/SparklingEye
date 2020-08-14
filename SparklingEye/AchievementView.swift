//
//  AchievementView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/13.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct AchievementView: View {
    var body: some View {

        
        ZStack {
//            Text("成就系统")
//                .foregroundColor(Color(#colorLiteral(red: 0.9803921569, green: 0.6196078431, blue: 0.5529411765, alpha: 1)))
//                .font(.system(size: 21, weight: .semibold))
            ScrollView {
                VStack(spacing: 24) {
                    TopCardView()
                    
                    BottomCardView()
                    
                    TopCardView()
                }
                .padding()
            }
           
        }
        .navigationBarTitle("成就系统", displayMode: .inline)
    }
}

struct AchievementView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementView()
    }
}

struct GreenEyePrintView: View {
    var body: some View {
        ZStack {
            Ellipse()
                .foregroundColor(.white)
                .frame(width: 44, height: 44)
                .overlay(
                    Image(systemName: "eye.circle.fill").foregroundColor(Color(#colorLiteral(red: 0.7803921569, green: 0.8823529412, blue: 0.8274509804, alpha: 1)))
                        .font(.system(size: 36))
                )
        }
    }
}

struct RedEyePrintView: View {
    var body: some View {
        ZStack {
            Ellipse()
                .foregroundColor(.white)
                .frame(width: 44, height: 44)
                .overlay(
                    Image(systemName: "eye.circle.fill").foregroundColor(Color(#colorLiteral(red: 0.9764705882, green: 0.8431372549, blue: 0.7294117647, alpha: 1)))
                        .font(.system(size: 36))
                )
        }
    }
}

struct TopPrintView: View {
    var body: some View {
        VStack {
            HStack {
                
                GreenEyePrintView()
                Spacer()
                GreenEyePrintView()
                Spacer()
                GreenEyePrintView()
                Spacer()
                GreenEyePrintView()
                Spacer()
                GreenEyePrintView()
                
            }
            Spacer()
            HStack {
                EmptyPrintView()
                Spacer()
                EmptyPrintView()
                Spacer()
                EmptyPrintView()
                Spacer()
                GreenEyePrintView()
                Spacer()
                GreenEyePrintView()
            }
        }
    }
}

struct EmptyPrintView: View {
    var body: some View {
        Ellipse()
            .foregroundColor(.white)
            .frame(width: 44, height: 44)
    }
}

struct BottomPrintView: View {
    var body: some View {
        VStack {
            HStack {
                
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
                
            }
            Spacer()
            HStack {
                EmptyPrintView()
                Spacer()
                EmptyPrintView()
                Spacer()
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
                Spacer()
                RedEyePrintView()
            }
        }
    }
}

struct TopCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.9843137255, green: 0.7215686275, blue: 0.6745098039, alpha: 1)).opacity(0.88))
            
            VStack {
                HStack {
                    Text("累计训练天数：")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }
                
                Spacer()
                
                HStack(alignment: .firstTextBaseline, spacing: 0) {
                    Text("7")
                        .foregroundColor(Color(#colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)))
                        .font(.system(size: 100, weight: .medium, design: .rounded))
                    Text("天")
                        .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 16, weight: .semibold))
                        .offset(x: -10)
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5)
                        .padding(.all, 22)
                    
                    TopPrintView()
                }
            }
            .padding()
        }
        .aspectRatio(1.5, contentMode: .fit)
    }
}

struct BottomCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.9843137255, green: 0.7215686275, blue: 0.6745098039, alpha: 1)).opacity(0.88))
            
            VStack {
                HStack {
                    Text("累计训练次数：")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }
                
                Spacer()
                
                HStack(alignment: .firstTextBaseline, spacing: 0) {
                    Text("18")
                        .foregroundColor(Color(#colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)))
                        .font(.system(size: 100, weight: .medium, design: .rounded))
                    Text("次")
                        .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 16, weight: .semibold))
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5)
                        .padding(.all, 22)
                    
                    BottomPrintView()
                }
            }
            .padding()
        }
        .aspectRatio(1.5, contentMode: .fit)
    }
}
