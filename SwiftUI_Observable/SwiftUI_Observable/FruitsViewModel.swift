//
//  FruitViewModel.swift
//  SwiftUI_StateObject_ObservableObject
//
//  Created by Ambreen Bano on 06/10/25.
//

import SwiftUI
import Foundation

// iOS 17 Features
// 1. Old Protocol ObservableObject Replaced with @Observable
// 2. Old @Published removed
// 3. Old Normar var/let properties will be prefix with @ObservationIgnored
@Observable class FruitsViewModel {
    
    //@Published - This required in property. So, it can notify @StateObject that there is change in Model
     var fruitsModel: [FruitModel] = []
     var isLoading: Bool = false
     @ObservationIgnored var isDataFetched: Bool = false
    
    
    init(){
        //Calling this when viewModel is getting initialize from View
        fetchFruits()
    }
    
    
    
    //All business logic fetching/deletion/addition/formatting will be in ViewModel class
    
    func fetchFruits(){
        //Simulate API Call with delay
        isLoading = true
        fruitsModel.removeAll()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            guard let self = self else {return}
            self.fruitsModel.append(FruitModel(name: "Apple", count: 30))
            self.fruitsModel.append(FruitModel(name: "Banana", count: 40))
            self.fruitsModel.append(FruitModel(name: "Orange", count: 10))
            isLoading = false
        }
    }
    
    
    func deleteFruit(indexSet: IndexSet){
        fruitsModel.remove(atOffsets: indexSet)
    }
}
