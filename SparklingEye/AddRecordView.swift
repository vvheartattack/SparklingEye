//
//  AddRecordView.swift
//  SparklingEye
//
//  Created by Mika on 2020/8/14.
//  Copyright © 2020 Mika. All rights reserved.
//
import SwiftUI

struct AddRecordView: View {
    @State private var leftEyesightSelection = "5.0"
    @State private var rightEyesightSelection = "5.0"
    @State private var showLeftEyesightPicker = false
    @State private var showRightEyesightPicker = false
    @State var selectedDate = Date()
    
    private var selectedDateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/dd"
        return dateFormatter.string(from: selectedDate)
    }
    
    @Binding var isPresented: Bool
    var saveAction: (EyesightRecord) -> ()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("左眼视力")
                        Spacer()
                        Group {
                            Text(leftEyesightSelection)
                            Image(systemName: "chevron.right")
                        }.onTapGesture {
                            withAnimation {
                                showLeftEyesightPicker.toggle()
                            }
                        }
                    }
                    if showLeftEyesightPicker {
                        Picker(selection: $leftEyesightSelection, label:
                                Text("Picker Name")
                               , content: {
                                ForEach(0..<51) { i in
                                    Text(String(format: "%.1f", 5.0 - Double(i) / 10)).tag(String(format: "%.1f", 5.0 - Double(i) / 10))
                                }
                               })
                            .pickerStyle(WheelPickerStyle())
                    }
                    HStack {
                        Text("右眼视力")
                        Spacer()
                        Group {
                            Text(rightEyesightSelection)
                            Image(systemName: "chevron.right")
                        }.onTapGesture {
                            withAnimation {
                                showRightEyesightPicker.toggle()
                            }
                        }
                    }
                    if showRightEyesightPicker {
                        Picker(selection: $rightEyesightSelection, label:
                                Text("Picker Name")
                               , content: {
                                ForEach(0..<51) { i in
                                    Text(String(format: "%.1f", 5.0 - Double(i) / 10)).tag(String(format: "%.1f", 5.0 - Double(i) / 10))
                                }
                               })
                            .pickerStyle(WheelPickerStyle())
                    }
                    HStack {
                        Text("记录日期")
                        Spacer()
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                            .fixedSize(horizontal: true, vertical: false)
                    }
                }
            }
            .navigationBarTitle("新增视力记录")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button(action: {
                        isPresented.toggle()
                        saveAction(EyesightRecord(recordDate: selectedDateString, lefeEyesight: leftEyesightSelection, rightEyesight: rightEyesightSelection))
                    }, label: {
                        Text("保存")
                    })
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Text("取消")
                    })
                }
            }
        }
    }
}

struct AddRecordView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecordView(isPresented: .constant(true), saveAction: { _ in })
    }
}
