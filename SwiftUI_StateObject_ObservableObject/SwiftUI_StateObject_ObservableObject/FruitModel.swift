//
//  FruitModel.swift
//  SwiftUI_StateObject_ObservableObject
//
//  Created by user2 on 06/10/25.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
