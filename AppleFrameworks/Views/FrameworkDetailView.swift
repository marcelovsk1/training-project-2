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
            Text(framework.description)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
            
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 60)
                    .background(Color.indigo)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding()
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
