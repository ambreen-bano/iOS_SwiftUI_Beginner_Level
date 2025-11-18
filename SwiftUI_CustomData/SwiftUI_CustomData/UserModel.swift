//
//  UserModel.swift
//  SwiftUI_CustomData
//
//  Created by user2 on 06/10/25.
//

import SwiftUI

struct UserModel: Identifiable { //Identifiable model is required if we want use this model inside ForEach-loop
    var id: String = UUID().uuidString //To make model Identifiable we need to give unique id to our model
    let displayName: String
    let userName: String
    let followers: Int
    let isVerified: Bool
}
