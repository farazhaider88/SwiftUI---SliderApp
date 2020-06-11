//
//  SliderView.swift
//  SliderApp
//
//  Created by Faraz Haider on 11/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    var label : String
    @Binding var value : Double
    
    var body: some View {
        
        VStack{
        Slider(value:$value,in: 0...255,step: 1)
        Text("\(label) : \(Int(value))")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(label: "label", value: Binding.constant(0)).padding()
    }
}
