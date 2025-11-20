//
//  FruitsListView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by user2 on 06/10/25.
//

import SwiftUI

struct FruitsListView: View {
    
    @StateObject var fruitsVM: FruitsViewModel = FruitsViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                if fruitsVM.isLoading {
                    ProgressView()
                } else {
                    List {
                        ForEach(fruitsVM.fruitsModel) { fruitModel in
                            NavigationLink {
                                SecondView(selectedItem: fruitModel)
                            } label: {
                                HStack {
                                    Text("\(fruitModel.count)")
                                    Text(fruitModel.name)
                                }
                                .foregroundStyle(.green)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Fruits")
        }
        //WE are injecting fruitsVM as .environmentObject in the parent view. So, we don't need to pass this in subView Initializers. They all can access using @EnvironmentObject. Code is very clean
        .environmentObject(fruitsVM)
    }
}



//FruitsListView -> SecondView -> ThirdView
//fruitsVM is accessable in SecondView because fruitsVM is environmentObject. But we don't need to use in SecondView so we don't need to define fruitsVM here
struct SecondView: View {
    
    @State var selectedItem: FruitModel
    
    var body: some View {
        Text("Selected Fruit")
            .bold()
            .foregroundStyle(.red)
        NavigationLink(selectedItem.name) {
            //We don't need to pass fruitsVM in ThirdView Initializer. As it is @EnvironmentObject.
            ThirdView()
        }
        .foregroundStyle(.green)
    }
}


//FruitsListView -> SecondView -> ThirdView
//fruitsVM is accessable in ThirdView because fruitsVM is environment object. So, we need to define fruitsVM here as @EnvironmentObject
//Without EnvironmentObject we need to pass fruitsVM from all view even if they are NOT using. code will be massy
//If we write @EnvironmentObject for fruitsVM in ThirdView and if it is not injected as .environmentObject in parent view then app will crash. SO, use carefully ONLY for global properties
struct ThirdView: View {
    
    @EnvironmentObject var fruitsVM: FruitsViewModel
    
    var body: some View {
        Text("Fruits Model from First/Parent View")
            .bold()
            .foregroundStyle(.red)
        ForEach(fruitsVM.fruitsModel) { fruitModel in
            Text(fruitModel.name)
                .bold()
                .foregroundStyle(.green)
        }
    }
}




#Preview {
    FruitsListView()
}
