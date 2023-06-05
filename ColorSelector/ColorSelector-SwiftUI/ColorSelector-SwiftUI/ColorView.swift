//
//  ColorView.swift
//  ColorSelector-SwiftUI
//
//  Created by Marky Jordan on 6/5/23.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(maxHeight: .infinity)
    }
}
