//
//  formi.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 15.2.2022.
//

import SwiftUI


struct formi: View {
    @State private var numerot: String = ""
 
    var body: some View {
        TextField("type here",text: $numerot)

    }
}

struct formi_Previews: PreviewProvider {
    static var previews: some View {
        formi()
    }
}
