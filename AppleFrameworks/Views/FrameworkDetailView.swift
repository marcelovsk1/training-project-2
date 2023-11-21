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
            HStack{
                Spacer()
                
                Button {
                
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
                .preferredColorScheme(.dark)
                Text(framework.description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                ButtonModel(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
