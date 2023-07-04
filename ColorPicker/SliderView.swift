//
//  SliderView.swift
//  ColorPicker
//
//  Created by Nitin Kalokhe on 01/09/20.
//

import SwiftUI

struct SliderView: View {
    @Binding var value:Double
    var lable:String
    
    var body: some View {
        VStack{
            Slider(value: $value, in: 1...255, step: 1)
            Text("\(lable) : \(String(Int(value)))").foregroundColor(Color.white)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), lable: "Color")
    }
}
