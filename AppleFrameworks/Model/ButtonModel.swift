//
//  AFButtonModel.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-21.
//

import SwiftUI

struct AFButtonModel: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 60)
            .background(Color.indigo)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

#Preview {
    AFButtonModel(title: "Test Title")
}
