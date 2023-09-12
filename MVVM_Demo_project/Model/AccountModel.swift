//
//  AccountModel.swift
//  MVVM_Demo_project
//
//  Created by vignesh kumar c on 12/09/23.
//

import Foundation
import SwiftUI

struct Account: Identifiable, Codable {
    
    var id: Int
    var login: String
    var avatar_url: String
    
}

