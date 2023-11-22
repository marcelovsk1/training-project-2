//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButtonViewModel(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
                .preferredColorScheme(.dark)
                Text(framework.description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()
            
            Spacer()
            
            Button {
                isShowingDetailView = true
            } label: {
                ButtonModel(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariViewModel(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
