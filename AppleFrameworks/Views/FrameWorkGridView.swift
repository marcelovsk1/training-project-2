//
//  FrameWorkGridView.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-17.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameWorkTitleView(framework: framework)
                            .preferredColorScheme(.dark)
                            .onTapGesture {
                                print("")
                            }
                        
                    }
                }
            }
            .navigationTitle(" Frameworks")
        }
    }
}

#Preview {
    FrameWorkGridView()
}
