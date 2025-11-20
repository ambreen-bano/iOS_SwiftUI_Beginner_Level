//
//  FruitsListView.swift
//  SwiftUI_StateObject_ObservableObject
//
//  Created by user2 on 06/10/25.
//

import SwiftUI

//PARENT VIEW
struct FruitsListView: View {
    /* We are using -
     @State
     @StateObject
     ONLY inside Struct and View
     We Can NOT use these property wrappers in class
     */
    
    /*
     @ObservedObject - it is use for observing but it does NOT maintain STATE of the variable, whenever view is re render or re create then this variable is also re created. that's why we use  @StateObject when we need to avoid recreation of the model which we don't want to chnage and we want to use same current state when we re render the view
     @StateObject - It is use to observe and maintain state (persist variable/property when view is re render or refresh or recreated) of the variable
     */
    
    
    //Use @StateObject - in Parent View to persist state of the property
    //Use @ObservedObject - If want to use this viewModel in child View(SubViews) then use @ObservedObject in child View, as child View is not owner of this property. it just want to use parent View property
    @StateObject var fruitsModelView: FruitsViewModel = FruitsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if fruitsModelView.isLoading {
                    ProgressView()
                } else {
                    List {
                        ForEach(fruitsModelView.fruitsModel) { fruit in
                            HStack {
                                Text("\(fruit.count)")
                                    .foregroundStyle(.red)
                                Text(fruit.name)
                                    .foregroundStyle(.green)
                            }
                        }
                        .onDelete { indexSet in
                            fruitsModelView.deleteFruit(indexSet: indexSet)
                        }
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem {
                    NavigationLink("Next") {
                        FruitsDescriptionView(fruitsModelView: fruitsModelView)
                    }
                }
            }
        }
    }
}





//CHILD VIEW/SUBVIEW
struct FruitsDescriptionView: View {
    
    //@ObservedObject because it is SubView
    //Now we have access of parent view property in child view
    //@ObservedObject property life cycle is NOT managed by child view, as this property owner is parent view, so parent view managed and responsible for life cycle of this property
    //Subview is NOT creating this property, it just access this parent property in child view
    @ObservedObject var fruitsModelView: FruitsViewModel
    
    var body: some View {
        VStack {
            Text("SubView")
                .bold()
                .foregroundStyle(.red)
                .padding()
            
            ForEach(fruitsModelView.fruitsModel) { fruit in
                Text(fruit.name)
                    .bold()
                    .foregroundStyle(.green)
            }
            
        }
    }
}



#Preview {
    FruitsListView()
}
