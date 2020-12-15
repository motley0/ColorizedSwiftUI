//
//  ColorRoundedRectangleView.swift
//  ColorizedSwiftUI
//
//  Created by Dmitry Shcherbakov on 15.12.2020.
//

import SwiftUI

struct ColorRoundedRectangleView: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 120)
            .foregroundColor(
                Color(
                    red: redValue / 255,
                    green: greenValue / 255,
                    blue: blueValue / 255
                )
            )
    }
}

struct ColorRoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRoundedRectangleView(redValue: 200, greenValue: 200, blueValue: 10)
    }
}
