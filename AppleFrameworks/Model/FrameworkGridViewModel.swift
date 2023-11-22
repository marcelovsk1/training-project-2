//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
