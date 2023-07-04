//
//  ContentView.swift
//  ColorPicker
//
//  Created by Nitin Kalokhe on 01/09/20.
//

import SwiftUI

struct ContentView: View {
    @State private var red:Double = 0.0;
    @State private var green:Double = 0.0;
    @State private var blue:Double = 0.0;
    
    var body: some View {
        // Aligning color box & sliders
        ZStack{
            Rectangle().foregroundColor(Color(red: self.red/255, green: self.green/255, blue: self.blue/255)).edgesIgnoringSafeArea(.all)
        VStack{
            Spacer()
            // Red
            SliderView(value: $red, lable: "Red")
            
            // Green
            SliderView(value: $green, lable: "Gree")

            // Blue
            SliderView(value: $blue, lable: "Blue")

            Spacer()
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
