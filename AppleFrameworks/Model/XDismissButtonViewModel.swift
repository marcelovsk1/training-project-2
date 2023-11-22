//
//  XDismissButtonViewModel.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-22.
//

import SwiftUI

struct XDismissButtonViewModel: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
        }
    }
}

#Preview {
    XDismissButtonViewModel(isShowingDetailView: .constant(false))
}
