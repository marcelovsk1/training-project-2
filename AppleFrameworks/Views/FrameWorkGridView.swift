//
//  FrameWorkGridView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-17.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameWorkTitleView(framework: framework)
                            .preferredColorScheme(.dark)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameWorkGridView()
}
