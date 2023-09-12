//
//  ContentView.swift
//  MVVM_Demo_project
//
//  Created by vignesh kumar c on 12/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                Home()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
