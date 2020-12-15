//
//  ColorStackView.swift
//  ColorizedSwiftUI
//
//  Created by Dmitry Shcherbakov on 15.12.2020.
//

import SwiftUI

struct ColorStackView: View {
    
    @Binding var sliderValue: Double
    let accentColor: Color

    var body: some View {
        HStack {
            Text(String(format: "%.f", sliderValue))
                .frame(width: 31)
                .foregroundColor(.white)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(accentColor)
            ColorTextFieldView(sliderValue: $sliderValue)
        }
    }
}

struct ColorStackView_Previews: PreviewProvider {
    private static var sliderValue = 10.0
    
    static var previews: some View {
        let binding = Binding(
            get: { sliderValue },
            set: { newValue in sliderValue = newValue}
        )
        ColorStackView(sliderValue: binding,accentColor: .red)
    }
}
