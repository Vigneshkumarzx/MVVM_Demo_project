//
//  Loader.swift
//  MVVM_Demo_project
//
//  Created by vignesh kumar c on 12/09/23.
//

import SwiftUI

struct Loader: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.stopAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
}
