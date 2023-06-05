//
//  ControlPanelView.swift
//  ColorSelector-SwiftUI
//
//  Created by Marky Jordan on 6/5/23.
//

import SwiftUI

struct ControlPanelView: View {
    @ObservedObject var controlPanelViewModel: ControlPanelViewModel
    
    var body: some View {
        VStack {
            Picker(selection: $controlPanelViewModel.selectedColor, label: Text("Color")) {
                ForEach(controlPanelViewModel.colors.indices, id: \.self) {
                    Text(controlPanelViewModel.colors[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
        .frame(maxHeight: .infinity)
        .background(Color(UIColor.secondarySystemBackground))
    }
}
