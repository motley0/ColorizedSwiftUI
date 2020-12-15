//
//  ColorizedView.swift
//  ColorizedSwiftUI
//
//  Created by Dmitry Shcherbakov on 15.12.2020.
//

import SwiftUI

struct ColorizedView: View {
    
    @State private var redSliderValue = 10.0
    @State private var greenSliderValue = 70.0
    @State private var blueSliderValue = 150.0
    
    var body: some View {
        ZStack {
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack {
                ColorRoundedRectangleView(
                    redValue: redSliderValue,
                    greenValue: greenSliderValue,
                    blueValue: blueSliderValue
                )
                
                ColorStackView(sliderValue: $redSliderValue,
                               accentColor: .red)
                ColorStackView(sliderValue: $greenSliderValue,
                               accentColor: .green)
                ColorStackView(sliderValue: $blueSliderValue,
                               accentColor: .blue)
                Spacer()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}
