//
//  FrameWorkTitleView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-21.
//

import SwiftUI

struct FrameWorkTitleView: View {
    let name: String
    let imageName: String
    
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

//#Preview {
//    FrameWorkTitleView(name: <#String#>, imageName: <#String#>)
//}
