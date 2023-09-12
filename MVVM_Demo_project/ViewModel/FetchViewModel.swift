//
//  FetchViewModel.swift
//  MVVM_Demo_project
//
//  Created by vignesh kumar c on 12/09/23.
//

import SwiftUI
import Foundation

class FetchAccounts: ObservableObject {
    
    @Published var accounts: [Account] = []
    
    let url = "https://api.github.com/users/hadley/orgs"
    
    func getUsers() {
        
        let urlSession = URLSession(configuration: .default)
        
        urlSession.dataTask(with: URL(string: url)!) { data, _, _ in
            guard let users = data else { return }
            
            do {
                let decoder = try JSONDecoder().decode([Account].self, from: users)
                print(decoder)
                DispatchQueue.main.async {
                    self.accounts = decoder
                }
            } catch {
                print(error)
            }
        }
        .resume()
    }
}
