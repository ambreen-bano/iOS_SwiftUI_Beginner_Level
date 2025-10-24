//
//  ListView.swift
//  SwiftUI_List
//
//  Created by Ambreen Bano on 01/10/25.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits = ["Apple", "Orange", "Banana", "Peach"]
    
    var body: some View {
        
        //List is like a VStack but has editing and many other functionality
        List {
            ForEach(fruits.indices, id: \.self) { index in
                HStack {
                    Text(fruits[index])
                        .padding(.all)
                        .background {
                            Color.gray //This will fill only content of the Cell BG
                        }
                    Image(systemName: "car")
                }
            }
            //After adding this we are getting capability of slide and delete cell
            // onDelete/onMove we are applying on each row of the list
            .onDelete { indexSet in
                fruits.remove(atOffsets: indexSet)
            }
            .onMove { indexSet, newOffset in
                fruits.move(fromOffsets: indexSet, toOffset: newOffset)
            }
            .listRowBackground(Color.yellow) //We use listRowBackground to fill Cell with BG Color
        }
        .listRowSpacing(10) //This is to give spacing between rows/cells
        .listStyle(.automatic) //This is to give differnt style look to our List
        .accentColor(.green) //This is NOT Working, Need to check
    }
}





// Swipe Actions for custom actions on swiping cells
struct ListViewWithSwipeActions: View {
    
    @State var fruits = ["Apple", "Orange", "Banana", "Peach"]
    
    var body: some View {
        
        //List is like a VStack but has editing and many other functionality
        List {
            ForEach(fruits.indices, id: \.self) { index in
                HStack {
                    Text(fruits[index])
                        .padding(.all)
                        .background {
                            Color.gray //This will fill only content of the Cell BG
                        }
                    Image(systemName: "car")
                }
            }
            .listRowBackground(Color.yellow) //We use listRowBackground to fill Cell with BG Color
            
            // swipeActions we are applying on each row of the list
            //allowsFullSwipe if false we CAN NOT apply action just by full swipe, we don't need to click to perform action (Good when we have multiple buttons)
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                
                //Button 1
                Button(role: .destructive) { // destructive is For Deletion
                    
                } label: {
                    Image(systemName: "trash")
                }
                .tint(Color.red)
                
                //Button 2
                Button(role: .cancel) {
                    
                } label: {
                    Image(systemName: "xmark")
                }
                .tint(Color.purple)
                
                //Button 3
                Button {
                    
                } label: {
                    Image(systemName: "gear")
                }
                .tint(Color.green)
            }
            //Button will appear in leading when swipe left
            //allowsFullSwipe if true we CAN apply action just by full swipe, we don't need to click to perform action
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button {
                    
                } label: {
                    Image(systemName: "checkmark")
                }
                .tint(Color.brown) //Entire Button Color can change using tint
            }
        }
        .listRowSpacing(10) //This is to give spacing between rows/cells
        .listStyle(.automatic) //This is to give differnt style look to our List
        .accentColor(.green) //This is NOT Working, Need to check
    }
}





//How we can divide my List into Sections
struct ListViewWithSections: View {
    
    @State var fruits = ["Apple", "Orange", "Banana", "Peach"]
    @State var vegetables = ["Carrot", "Cucumber", "Lemon"]
    
    var body: some View {
        
        //List is like a VStack but has editing and many other functionality
        List {
            
            //Section 1
            Section {
                ForEach(fruits.indices, id: \.self) { index in
                    Text(fruits[index])
                        .background {
                            Color.orange //This will fill only content of the Cell BG
                        }
                }
                //After adding this we are getting capability of slide and delete cell
                .onDelete { indexSet in
                    fruits.remove(atOffsets: indexSet)
                }
                .onMove { indexSet, newOffset in
                    fruits.move(fromOffsets: indexSet, toOffset: newOffset)
                }
                .listRowBackground(Color.yellow) //We use listRowBackground to fill Cell with BG Color
            } header: {
                HStack {
                    Text("Fruits")
                        .bold()
                    Image(systemName: "gear")
                }
            } footer: {
                //We can add footer
            }
            
            
            
            //Section 2
            Section {
                ForEach(vegetables.indices, id: \.self) { index in
                    Text(vegetables[index])
                        .background {
                            Color.orange //This will fill only content of the Cell BG
                        }
                }
                //After adding this we are getting capability of slide and delete cell
                .onDelete { indexSet in
                    vegetables.remove(atOffsets: indexSet)
                }
                .onMove { indexSet, newOffset in
                    vegetables.move(fromOffsets: indexSet, toOffset: newOffset)
                }
                .listRowBackground(Color.yellow) //We use listRowBackground to fill Cell with BG Color
            } header: {
                Text("Vegetables")
                    .bold()
            } footer: {
                //We can add footer
            }
            
        }
        .listRowSpacing(10) //This is to give spacing between rows/cells
        .listStyle(.insetGrouped) //This is to give differnt style look to our List
        //.listStyle(.plain) //This is to give differnt style look to our List
        .accentColor(.green) //This is NOT Working, Need to check
    }
}





//How we can use Navigation bar Buttons with List
struct ListViewWithNavigation: View {
    
    @State var fruits = ["Apple", "Orange", "Banana", "Peach"]
    @State var vegetables = ["Carrot", "Cucumber", "Lemon"]
    
    var body: some View {
        
        //With navigation view in List we are getting some extra functionality
        NavigationView {
            
            //List is like a VStack but has editing and many other functionality
            List {
                
                //Section 1
                Section {
                    ForEach(fruits.indices, id: \.self) { index in
                        Text(fruits[index])
                            .background {
                                Color.orange //This will fill only content of the Cell BG
                            }
                    }
                    //After adding this we are getting capability of slide and delete cell
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    }
                    .onMove { indexSet, newOffset in
                        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
                    }
                    .listRowBackground(Color.yellow) //We use listRowBackground to fill Cell with BG Color
                } header: {
                    HStack {
                        Text("Fruits")
                            .bold()
                        Image(systemName: "gear")
                    }
                    
                } footer: {
                    //We can add footer
                }
                
            }
            .listRowSpacing(10) //This is to give spacing between rows/cells
            .listStyle(.insetGrouped) //This is to give differnt style look to our List
            //.listStyle(.plain) //This is to give differnt style look to our List
            .accentColor(.green) //This is NOT Working, Need to check
            
            .navigationTitle("Grocery")
            // PREDEFINE Bar Button - EditButton() is predefine available for Deleting and moving List cell items. Which we can add as a Navigation bar button
            .navigationBarItems(leading: EditButton())
            // CUSTOM Bar Button - we can add custom buttons in navigation
            .navigationBarItems(
                trailing:
                    Button(action: {
                        //We can perform some actions on our list here
                        fruits.append("New Fruit")
                    }, label: {
                        VStack {
                            Image(systemName: "flame")
                            Text("Add")
                        }
                    })
            )
        }
        .accentColor(.red) //Using this we can change our Navigation Bar buttons Color
    }
}



#Preview {
    //ListView()
    ListViewWithSwipeActions()
    //ListViewWithSections()
    //ListViewWithNavigation()
}
