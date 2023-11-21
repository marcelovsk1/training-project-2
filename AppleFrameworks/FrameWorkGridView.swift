//
//  FrameWorkGridView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-17.
//

import SwiftUI

struct FrameWorkGridView: View {
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
    }
}

#Preview {
    FrameWorkGridView()
}
