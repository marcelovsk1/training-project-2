//
//  SafariViewModel.swift
//  AppleFrameworks
//
//  Created by Marcelo Amaral Alves on 2023-11-22.
//

import SwiftUI
import SafariServices

struct SafariViewModel: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariViewModel>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: 
                                UIViewControllerRepresentableContext<SafariViewModel>) {}
}
