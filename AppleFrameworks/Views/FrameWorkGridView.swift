//
//  FrameWorkGridView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-17.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        })
        VStack {
            FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
            
        }
    }
}

#Preview {
    FrameWorkGridView()
}
