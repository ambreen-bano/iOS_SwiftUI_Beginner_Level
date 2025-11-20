//
//  FruitViewModel.swift
//  SwiftUI_StateObject_ObservableObject
//
//  Created by user2 on 06/10/25.
//

import SwiftUI
import Foundation

//@StateObject properties should be comform from ObservableObject protocol
class FruitsViewModel: ObservableObject {
    
    //@Published - This required in property. So, it can notify @StateObject that there is change in Model
    @Published var fruitsModel: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        //Calling this when viewModel is getting initialize from View
        fetchFruits()
    }
    
    
    
    //All business logic fetching/deletion/addition/formatting will be in ViewModel class
    
    func fetchFruits(){
        //Simulate API Call with delay
        isLoading = true
        fruitsModel.removeAll()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            guard let self = self else {return}
            self.fruitsModel.append(FruitModel(name: "Apple", count: 30))
            self.fruitsModel.append(FruitModel(name: "Bangana", count: 40))
            self.fruitsModel.append(FruitModel(name: "Orange", count: 10))
            isLoading = false
        }
    }
    
    
    func deleteFruit(indexSet: IndexSet){
        fruitsModel.remove(atOffsets: indexSet)
    }
}
