//
//  ContentView.swift
//  ColorSelector-SwiftUI
//
//  Created by Marky Jordan on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var controlPanelViewModel = ControlPanelViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            ColorView(color: controlPanelViewModel.color)
                .frame(maxHeight: .infinity)
                .edgesIgnoringSafeArea(.top)
            
            ControlPanelView(controlPanelViewModel: controlPanelViewModel)
                .frame(maxHeight: .infinity)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
