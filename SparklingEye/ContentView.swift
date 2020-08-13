//
//  ContentView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/10.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State  var settingPage: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                BackgroundView()
                VStack {
                    HeadView(settingPage: $settingPage)
                    ZStack {
                        VStack {
                            WeekView().padding()
                            CardView()
                        }
                        .blur(radius: settingPage ? 20 : 0)
                        if settingPage {
                            SettingView(settingPage: $settingPage)
                        }
                    }
                    Spacer()
                    
                }
            }
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}


// 音量按钮
struct HeadView: View {
    @Binding var settingPage: Bool
    var body: some View {
        
        HStack {
            Image("volume")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44)
                .padding(.horizontal)
            
            Spacer()
            
            Button(action: {self.settingPage.toggle()}) {
                Image("setting")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 44, height: 44)
                    .padding(.horizontal)
            }
                
        }
    }
}


struct WeekView: View {
    let dayInWeek = ["Mon.","Tue.","Wed.","Thu.","Fri.","Sat.","Sun."]
    var body: some View {
        ZStack {
            Rectangle()
                //.frame(width: 342, height: 149)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .opacity(0.7)
                //                .cornerRadius(20)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                .shadow(color: Color.white.opacity(0.3), radius: 15, x: 0, y: 10)
                .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 1)
            
            VStack {
                Text("This Week")
                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)).opacity(0.9))
                    .font(.system(size:22, weight: .semibold))
                    .padding()
                
                
                HStack {
                    ForEach(0..<dayInWeek.count){ index in
                        VStack{
                            Text(self.dayInWeek[index])
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)).opacity(0.9))
                            WeekCircleView()
                        }
                        if index < self.dayInWeek.count - 1 {
                            Spacer()
                        }
                    }
                }.padding()
            }
            
        }
        .aspectRatio(342 / 149, contentMode: .fit)
        
    }
}

struct WeekCircleView: View {
    var body: some View {
        Circle()
            .frame(width: 36, height: 36)
            .foregroundColor(Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)))
    }
}

struct CardView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                NavigationLink(destination: RecordView()){
                    RecordCardView()
                }
                NavigationLink(destination: AchievementView()){
                    AchievementCardView().padding()
                }
            }
            VStack {
                NavigationLink(destination: EmptyView()){
                    RelaxCardView()
                    
                }
            }
        }
    }
}

struct RelaxCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading))
                .frame(width: 140, height: 140)
                .shadow(color: Color(.white).opacity(0.05), radius: 3, x: 0, y: 1)
                .shadow(color: Color(#colorLiteral(red: 0.537254902, green: 0.6901960784, blue: 0.6823529412, alpha: 1)).opacity(0.4), radius: 15, x: 0, y: 10)
                .overlay(
                    VStack {
                        HStack(alignment: .center) {
                            Text("眼部减压")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12, weight: .semibold))
                                .fixedSize()
                            
                            Spacer()
                            Text("今日")
                                .foregroundColor(Color.white.opacity(0.7))
                                .font(.system(size: 10, weight: .semibold))
                        }
                        
                        Spacer()
                        HStack(alignment: .top, spacing: 0) {
                            Text("1")
                                .foregroundColor(Color.white)
                                .font(.system(size: 48, weight: .bold))
                            Text("次")
                                .foregroundColor(Color.white)
                                .font(.system(size: 10, weight: .semibold))
                        }
                        Text("放松一下")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18, weight: .semibold))
                    }
                    .padding()
            )
                .padding()
        }
    }
}

struct AchievementCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1)), Color(#colorLiteral(red: 0.968627451, green: 0.6705882353, blue: 0.662745098, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 140, height: 140)
                .shadow(color: Color(.white).opacity(0.05), radius: 3, x: 0, y: 1)
                .shadow(color: Color(#colorLiteral(red: 0.9843137255, green: 0.631372549, blue: 0.631372549, alpha: 1)).opacity(0.4), radius: 15, x: 0, y: 10)
                .overlay(
                    VStack {
                        HStack(alignment: .top) {
                            Text("成就")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12, weight: .semibold))
                            Spacer()
                            Text("6 个\n成就")
                                .foregroundColor(Color.white.opacity(0.7))
                                .font(.system(size: 12, weight: .semibold))
                                .fixedSize()
                        }
                        Spacer()
                        RingView(percentage: 0.85)
                            .padding(2)
                        Text("连续锻炼7天")
                            .foregroundColor(Color.white)
                            .font(.system(size: 12, weight: .semibold))
                        
                        
                        
                    }
                    .padding()
            )
                .padding()
        }
        
    }
}

struct RecordCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.8392156863, blue: 0.7294117647, alpha: 1)), Color(#colorLiteral(red: 0.968627451, green: 0.6705882353, blue: 0.662745098, alpha: 1))]), startPoint: UnitPoint(x: 0.7, y: 0.5), endPoint: .bottomTrailing))
                .frame(width: 140, height: 140)
                .shadow(color: Color(.white).opacity(0.05), radius: 3, x: 0, y: 1)
                .shadow(color: Color(#colorLiteral(red: 0.9843137255, green: 0.631372549, blue: 0.631372549, alpha: 1)).opacity(0.4), radius: 15, x: 0, y: 10)
                .overlay(
                    VStack {
                        HStack(alignment: .top) {
                            Text("视力记录")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12, weight: .semibold))
                            Spacer()
                            Text("5 个\n记录")
                                .foregroundColor(Color.white.opacity(0.7))
                                .font(.system(size: 12, weight: .semibold))
                                .fixedSize()
                        }
                        HStack(alignment: .top, spacing: 0) {
                            Text("5.0")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32, weight: .bold))
                            Text("L")
                                .foregroundColor(Color.white)
                                .font(.system(size: 10, weight: .semibold))
                            Spacer()
                        }
                        HStack(alignment: .top, spacing: 0) {
                            Text("5.0")
                                .foregroundColor(Color.white)
                                .font(.system(size: 32, weight: .bold))
                            Text("R")
                                .foregroundColor(Color.white)
                                .font(.system(size: 10, weight: .semibold))
                            Spacer()
                        }
                        HStack {
                            Text("2020-8-3")
                                .foregroundColor(Color.white.opacity(0.7))
                                .font(.system(size: 12, weight: .semibold))
                            Spacer()
                        }
                    }
                    .padding()
            )
                .padding()
        }
    }
}
