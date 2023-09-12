//
//  Home.swift
//  MVVM_Demo_project
//
//  Created by vignesh kumar c on 12/09/23.
//

import Foundation
import SwiftUI

struct Home: View {
    
    @ObservedObject var users = FetchAccounts()
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(self.users.accounts) { user in
                        
                        CardView(accountDetails: user)
                    }
                }
            }
        .onAppear {
            self.users.getUsers()
        }
        .navigationBarTitle("Home")
    }
}

