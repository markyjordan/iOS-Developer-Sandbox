//
//  ControlPanelViewModel.swift
//  ColorSelector-SwiftUI
//
//  Created by Marky Jordan on 6/5/23.
//

import SwiftUI

class ControlPanelViewModel: ObservableObject {
    @Published var selectedColor: Int = 0

    let colors = ["Red", "Green", "Blue"]

    var color: Color {
        switch colors[selectedColor] {
        case "Red":
            return .red
        case "Green":
            return .green
        case "Blue":
            return .blue
        default:
            return .red
        }
    }
}

