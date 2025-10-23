//
//  NavigationStacks.swift
//  SwiftUI_NavigationStack
//
//  Created by Ambreen Bano on 03/10/25.
//

import SwiftUI

//OLD Way using NavigationView - DO NOT Use as it is NOT Lazy Loading
struct NavigationViewsOLDWay: View {
    var body: some View {
        
        //Old way - Navigation View
        NavigationView {
            VStack {
                Spacer()
                
                //We use NavigationLink to navigate another screen
                //OLD way is BAD why?  - All the NavigationLink screens will load at the time of main view load, so it use lot of processing and memory
                //NavigationLink doesn't provide lazy loading
                NavigationLink("New Screen 1") {
                    MyNewScreen(model: MyModel(name: "Amber"))
                }
                NavigationLink("New Screen 2") {
                    MyNewScreen(model: MyModel(name: "Iram"))
                }
                NavigationLink(value: "StringNavigation") {
                    Text("New Screen 3")
                }
                
                Spacer()
                Spacer()
            }
            .navigationTitle("Navigation View")
            .foregroundColor(.red)
        }
    }
}



//NEW Way using NavigationStack and navigationDestination - LAZY LOADING
struct NavigationStacks: View {
    var body: some View {
        
        //New way - NavigationStack replaced NavigationView
        NavigationStack {
            VStack {
                Spacer()
                
                //This will behave like lazy loading now because of NavigationStack and navigationDestination
                NavigationLink(value: MyModel(name: "Amber")) {
                    Text("New Screen 1")
                }
                
                NavigationLink(value: MyModel(name: "Iram")) {
                    Text("New Screen 2")
                }
                
                NavigationLink(value: "StringNavigation") {
                    Text("New Screen 3")
                }
                
                Spacer()
                Spacer()
            }
            .navigationTitle("Navigation Stack")
            .foregroundColor(.red)
            
            //WE can give multiple .navigationDestination with multiple data types using for:
            //It will match value of NavigationLink to navigate using .navigationDestination
            .navigationDestination(for: MyModel.self) { model in //New Way
                //It will navigate to this destination for MyModel NavigationLink
                MyNewScreen(model: model)
            }
            .navigationDestination(for: String.self) { value in
                //It will navigate to this destination for String NavigationLinks
                Text("We can navigate using Predefine data types also!")
            }
        }
    }
}




//NEW Way using NavigationStack and navigationDestination - LAZY LOADING
struct NavigationStacksWithPath: View {
    
    @State var stackPath : [MyModel] = []
    
    var body: some View {
        
        //New way - NavigationStack replaced NavigationView
        NavigationStack(path: $stackPath) { //After binding NavigationStack with path, we can navigate only for path types wg. we will navigate using .navigationDestination for only MyModel values
            VStack {
                Spacer()
                
                //This will behave like lazy loading now because of NavigationStack and navigationDestination
                NavigationLink(value: MyModel(name: "Amber")) {
                    Text("New Screen 1")
                }
                
                NavigationLink(value: MyModel(name: "Iram")) {
                    Text("New Screen 2")
                }
                
                
                //POINT 1: Navigation Stack will work to navigate ONLY for $stackPath type values
                //This will not work now because NavigationStack is bind to stackPath of MyModel type values
                //NavigationLink(value: "StringNavigation") {
                //    Text("New Screen 3")
                //}
                
                
                //POINT 2: Using Buttons we can append programmatically screen in $stackPath to navigate
                Button("Button To Append Screen") {
                    stackPath.append(MyModel(name: "Safia"))
                }
                
                
                //POINT 3: Using stackPath we can append programmatically Multiple screens to navigate
                //This was NOT possible with OLD - NavigationView
                Button("Multiple Screens Push") {
                    //same screens can push multiple times from differnt buttons or links
                    stackPath.append(contentsOf: [MyModel(name: "Amber"), MyModel(name: "Safia"), MyModel(name: "Anika"), MyModel(name: "MarryDavid")])
                }
                
                
                
                Spacer()
                Spacer()
            }
            .navigationTitle("Navigation Stack")
            .foregroundColor(.red)
            
            //WE can give multiple .navigationDestination with multiple data types using for:
            //It will match value of NavigationLink to navigate using .navigationDestination
            .navigationDestination(for: MyModel.self) { model in //New Way
                //It will navigate to this destination for MyModel NavigationLink
                MyNewScreen(model: model)
            }
            .navigationDestination(for: String.self) { value in
                //It will navigate to this destination for String NavigationLinks
                Text("We can navigate using Predefine data types also!")
            }
        }
    }
}





//Another Screen to Navigate from main screen
struct MyNewScreen: View {
    var model: MyModel
    
    init(model: MyModel) {
        self.model = model
        print("Check when MyNewScreen is loaded into memory")
    }
    
    var body: some View {
        Text("MyNewScreen - \(model.name) ")
    }
}

//Model should conform Hashable to use in NavigationDestination
struct MyModel: Hashable {
    let name: String
}





#Preview {
    //NavigationViewsOLDWay()
    //NavigationStacks()
    NavigationStacksWithPath()
}
