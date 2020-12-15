//
//  ColorTextFieldView.swift
//  ColorizedSwiftUI
//
//  Created by Dmitry Shcherbakov on 15.12.2020.
//

import SwiftUI

struct ColorTextFieldView: View {
    
    @State private var textFieldValue = ""
    @State private var isShowAlert = false
    
    @Binding var sliderValue: Double
    
    var body: some View {
        let bindingTextField = Binding(
            get: { String(format: "%.f", sliderValue) },
            set: { newValue in textFieldValue = newValue }
        )
        
        TextField("", text: bindingTextField, onCommit: {
            if let textFieldDouble = Double(textFieldValue),
               textFieldDouble >= 0,
               textFieldDouble <= 255 {
                sliderValue = textFieldDouble
                return
            }
            
            isShowAlert = true
            textFieldValue = "255"
            sliderValue = 255
        })
        .frame(width: 31)
        .background(Color(.white))
        .clipShape(RoundedRectangle(cornerRadius: 4))
        .alert(isPresented: $isShowAlert) {
            Alert(
                title: Text("Wrong format!"),
                message: Text("Please enter value from 0 to 255"))
            }
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    private static var sliderValue = 10.0
    
    static var previews: some View {
        let binding = Binding(
            get: { sliderValue },
            set: { newValue in sliderValue = newValue}
        )
        ColorTextFieldView(sliderValue: binding)
    }
}
