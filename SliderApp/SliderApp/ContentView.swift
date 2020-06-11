//
//  ContentView.swift
//  SliderApp
//
//  Created by Faraz Haider on 11/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0
    
    var body: some View {
        VStack{
            Rectangle().frame(width:100,height: 100).foregroundColor(Color(red: red/255, green: green/255, blue: blue/255)).border(Color.black, width: 1)
            
            SliderView(label: "Red", value: $red)
            
             SliderView(label: "Green", value: $green)
            
             SliderView(label: "Blue", value: $blue)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
