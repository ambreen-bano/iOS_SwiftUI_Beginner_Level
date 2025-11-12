//
//  ControlGroups.swift
//  SwiftUI_ControlGroup
//
//  Created by Ambreen Bano on 06/10/25.
//

import SwiftUI

struct SimpleMenu: View {
    var body: some View {
        VStack(spacing: 20) {
            //Simple Menu -  All options will come in Coloum
            Menu {
                Button("One") {
                    
                }
                
                Button("Two") {
                    
                }
                
                Button("Three") {
                    
                }
            } label: {
                Text("Simple Menu")
            }
            
            
            //Menu inside Menu
            Menu {  //All options will come in Coloum
                Button("One") {
                    
                }
                
                Button("Two") {
                    
                }
                
                Button("Three") {
                    
                }
                
                Menu("Two Options") {  //All options will come in Coloum
                    Button("One") {
                        
                    }
                    
                    Button("Two") {
                        
                    }
                    
                    Button("Three") {
                        
                    }
                }
            } label: {
                Text("Menu Inside Menu")
            }
        }
        .bold()
        .foregroundColor(.green)
    }
}



struct ControlGroups: View {
    var body: some View {
        
        VStack(spacing: 20) {
            //All options of ControlGroup will come in ROW
            ControlGroup("Control Group") {
                Button("One") {
                    
                }
                
                Button("Two") {
                    
                }
                
                Button("Three") {
                    
                }
            }
            
            
            
            
            //Control Group inside Menu
            Menu {
                ControlGroup { //All options of ControlGroup will come in ROW
                    Button("One") {
                        
                    }
                    
                    Button("Two") {
                        
                    }
                    
                    Button("Three") {
                        
                    }
                }
                
                Menu("Two Options") { //All options will come in Coloum
                    Button("One") {
                        
                    }
                    
                    Button("Two") {
                        
                    }
                    
                    Button("Three") {
                        
                    }
                }
            } label: {
                Text("Menu With Control Group")
            }
            
        }
        .bold()
        .foregroundColor(.green)
    }
}


#Preview {
    SimpleMenu()
    //ControlGroups()
}
