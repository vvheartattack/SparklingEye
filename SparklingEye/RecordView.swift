//
//  RecordView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/13.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct RecordView: View {
    @State private var showAddRecordView = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)).edgesIgnoringSafeArea(.all) //背景
            ZStack {
                VStack(alignment: .trailing , spacing: 0){
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 164, height: 60)
                            .foregroundColor(Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)))
                            .offset(y: 20)
                    }
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 342, height: 133)
                        .foregroundColor(Color(#colorLiteral(red: 0.7450980392, green: 0.8901960784, blue: 0.8588235294, alpha: 1)))
                    
                }.padding()
                VStack{
                    HStack{
                        Spacer()
                        Text("2020/8/3")
                            .foregroundColor(.white)
                            .font(.system(size: 21, weight: .medium))
                            .padding()
                        
                    }
                    
                    HStack{
                        Text("5.0")
                            .foregroundColor(.white)
                            .font(.system(size: 72, weight: .semibold))
                        
                        Spacer()
                        Text("4.8")
                            .foregroundColor(.white)
                            .font(.system(size: 72, weight: .semibold))
                    }.padding()
                }
            }
            
            
            
        }
        .navigationBarTitle("视力记录", displayMode: .inline)
        .navigationBarColor(backgroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0), tintColor: UIColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1))), hiddenShadow: true)
        .navigationBarItems(trailing:
                                Button(action: {
                                    showAddRecordView.toggle()
                                }, label: {
                                    Image(systemName: "plus")
                                        .font(.system(size: 26))
                                })
        )
        .sheet(isPresented: $showAddRecordView) {
            AddRecordView(isPresented: $showAddRecordView)
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RecordView()
        }
    }
}
