//
//  RecordView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/13.
//  Copyright © 2020 Mika. All rights reserved.
//

import SwiftUI

struct EyesightRecord: Identifiable {
    var id = UUID()
    var recordDate: String
    var lefeEyesight: String
    var rightEyesight: String
}

class EyesightRecordViewModel: ObservableObject {
    @Published var eyesightRecords = [
        EyesightRecord(recordDate: "2020/08/03", lefeEyesight: "5.0", rightEyesight: "4.8"),
        EyesightRecord(recordDate: "2020/06/03", lefeEyesight: "4.9", rightEyesight: "4.8"),
    ]
    
    func addEyesightRecord(record: EyesightRecord) {
        eyesightRecords.insert(record, at: 0)
    }
}

struct RecordView: View {
    @State private var showAddRecordView = false
    @StateObject private var viewModel = EyesightRecordViewModel()
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)).edgesIgnoringSafeArea(.all) //背景
            ScrollView {
                VStack {
                    ForEach(viewModel.eyesightRecords) { record in
                        EyesightRecordCardView(recordDate: record.recordDate, lefeEyesight: record.lefeEyesight, rightEyesight: record.rightEyesight)
                    }
                }
            }
        }
        .navigationBarTitle("视力记录", displayMode: .inline)
        .navigationBarColor(backgroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0), tintColor: UIColor(Color(#colorLiteral(red: 0.3333333333, green: 0.3568627451, blue: 0.431372549, alpha: 1))), hiddenShadow: true)
        .navigationBarItems(trailing:  
                                Image(systemName: "plus")
                                    .font(.system(size: 28))
                                .foregroundColor(Color(#colorLiteral(red: 0.9803921569, green: 0.6196078431, blue: 0.5529411765, alpha: 1)))
                                    .onTapGesture { showAddRecordView = true }
        )
        
        .sheet(isPresented: $showAddRecordView) {
            AddRecordView(isPresented: $showAddRecordView, saveAction: { record in
                withAnimation(.spring()) {
                    viewModel.addEyesightRecord(record: record)
                }
            })
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

struct EyesightRecordCardView: View {
    var recordDate: String = "2020/08/03"
    var lefeEyesight: String = "5.0"
    var rightEyesight: String = "4.8"
    
    var body: some View {
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
                    Text(recordDate)
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .medium))
                        .padding(.top)
                }
                
                HStack{
                    HStack(alignment: .firstTextBaseline) {
                        Text(lefeEyesight)
                            .foregroundColor(.white)
                            .font(.system(size: 72, weight: .semibold))
                        Text("L")
                            .foregroundColor(.white)
                            .font(.system(size: 20,weight: .semibold))
                            .offset(x: -5)
                    }
                    
                    
                    Spacer()
                    HStack(alignment: .firstTextBaseline) {
                        Text(rightEyesight)
                            .foregroundColor(.white)
                            .font(.system(size: 72, weight: .semibold))
                        Text("R")
                            .foregroundColor(.white)
                            .font(.system(size: 20,weight: .semibold))
                            .offset(x: -5)
                    }
                    
                }.padding()
            }
            .padding()
            .padding(.horizontal)
        }
    }
}
