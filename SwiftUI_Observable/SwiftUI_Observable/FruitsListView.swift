//
//  FruitsListView.swift
//  SwiftUI_EnvironmentObject
//
//  Created by Ambreen Bano on 06/10/25.
//

import SwiftUI

// iOS 17 Features
// 1. @StateObject is Replaced with @State
// 2. @ObservedObject Replaced with  @Bindable
// 3. .environmentObject() Replaced with .environment()
// 4. @EnvironmentObject Replaced with @Environment(EnvironmentObjectClassName.self)


struct FruitsListView: View {
  
    @State var fruitsVM: FruitsViewModel = FruitsViewModel()
    @State var isLoading: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                if fruitsVM.isLoading {
                    ProgressView()
                } else {
                    List {
                        ForEach(fruitsVM.fruitsModel) { fruitModel in
                            NavigationLink {
                                SecondView(fruitsVM: fruitsVM, isLoading: $isLoading, selectedItem: fruitModel)
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
        .environment(fruitsVM)
    }
}



struct SecondView: View {
    
    //Earlier it was define as @ObservedObject
    //@Bindable use at place of @ObservedObject for @Observable class ONLY
    @Bindable var fruitsVM: FruitsViewModel
    
    //This is Parent view @State property (NOT @Observable class) so we use it as @Binding if we want to use it in child view. BUt it is parent view property(owner)
    @Binding var isLoading: Bool
    
    //This is @State variable for SecondView, this is not coming from parent View
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



struct ThirdView: View {
    
    @Environment(FruitsViewModel.self) var fruitsVM: FruitsViewModel
    
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
