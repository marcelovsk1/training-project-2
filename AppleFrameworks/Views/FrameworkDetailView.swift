//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            FrameWorkTitleView(framework: framework)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: Framework(name: <#T##String#>, imageName: <#T##String#>, urlString: <#T##String#>, description: <#T##String#>))
}
