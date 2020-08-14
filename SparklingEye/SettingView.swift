//
//  SettingView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/12.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @Binding var settingPage: Bool
    var selections = ["夜间模式","切换语言","定时提醒","iCloud 同步"]
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.9803921569, green: 0.9764705882, blue: 0.9764705882, alpha: 1)).opacity(0.4))
                .padding(.vertical)
                .padding(.horizontal)
            
            VStack(spacing: 16) {
                ZStack {
                    Text("设置")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                        .font(.system(size: 22, weight: .semibold))
                        .padding()
//                        .padding(.top)
                    HStack {
                        Spacer()
                        Button(action: {self.settingPage.toggle()}) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                .font(.system(size: 25, weight: .medium))
                                .padding()
//                                .padding(.top)
                        }
                    }.padding()
                }
                
                
                ZStack {
                    SelectionView()
                        .overlay(
                            HStack {
                                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                                    Text(self.selections[0])
                                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                        .font(.system(size: 16, weight: .medium))
                                        .padding()
                                }
                                Spacer()
                        })
                }
                
                ZStack {
                    SelectionView()
                        .overlay(
                            HStack {
                                Text(self.selections[1])
                                    .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                    .font(.system(size: 16, weight: .medium))
                                    .padding()
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                        .font(.system(size: 16, weight: .medium))
                                })
                                .padding()
                                    
                                
                        })
                }
                    
                ZStack {
                    SelectionView()
                        .overlay(
                            HStack {
                                NavigationLink(destination: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                                Text(self.selections[2])
                                .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                .font(.system(size: 16, weight: .medium))
                                .padding()
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                            .font(.system(size: 16, weight: .medium))
                                    })
                                    .padding()
                                }
                            })
                }
                ZStack {
                    SelectionView()
                        .overlay(
                            HStack {
                                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                                    Text(self.selections[3])
                                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1)))
                                        .font(.system(size: 16, weight: .medium))
                                        .padding()
                                }
                                Spacer()
                        })
                }
                
                    Spacer()
                }
                Spacer()
            }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(settingPage: .constant(false))
    }
}

struct SelectionView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(#colorLiteral(red: 0.9803921569, green: 0.9764705882, blue: 0.9764705882, alpha: 1)).opacity(0.6))
            .frame(width: 340, height: 55)
    }
}
