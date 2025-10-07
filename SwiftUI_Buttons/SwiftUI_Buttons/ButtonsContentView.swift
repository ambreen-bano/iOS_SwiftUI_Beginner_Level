//
//  ButtonsContentView.swift
//  SwiftUI_Buttons
//
//  Created by Ambreen Bano on 29/09/25.
//

import SwiftUI

struct ButtonsContentView: View {
    @State var isDisabledBtn: Bool = true
    
    var body: some View {
        
        
        //Simple Button 1
        Spacer()
        Button("Tap Me") {
            print("Tap Me Button Click")
        }
        .foregroundColor(.red) //Button Text Color
        
        
        
        
        
        //Simple Button 2
        Spacer()
        Button("Tap Me") {
            print("Tap Me Button Click")
        }
        .accentColor(.green) //Button Text Color
        
        
        
        
        
        //Button with label, we can give any kind of view in label for button visual
        Spacer()
        Button {
            print("Tap Me Rectangle Button Click")
        } label: {
            Text("Tap Me")
                .padding()
                .padding(.horizontal, 10) //We can do this with frame or with padding
                .background(Color.blue)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(10)
        }
        .disabled(true)
        
        
        
        
        
        //Using Shape circle and Image for button
        Spacer()
        Button {
            print("Heart Tap Me Button Click")
        } label: {
            Circle()
                .fill(.white)
                .frame(width: 75)
                .shadow(radius: 10)
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.red)
                )
        }
        
        
        
        
        
        //Using Text and Shape capsul and Text for button
        Spacer()
        Button {
            print("Capsul Tap Me Button Click")
        } label: {
            Text("Tap Me")
                .foregroundColor(.black)
                .background(
                    Capsule()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 100, height: 40) //We can do this with frame or with padding on Text
                )
        }
        
        Spacer()
        
        
        
        
        
        //We can Enable/Disable Buttons
        Spacer()
        Button {
            print("Tap Me Rectangle Button Click")
        } label: {
            Text("Tap Me")
                .padding()
                .padding(.horizontal, 10) //We can do this with frame or with padding
                .background(isDisabledBtn ? Color.gray : Color.purple)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(10)
        }
        // On the basis of some validation we can set isDisabledBtn true to enable the button
        .disabled(isDisabledBtn)
        
    }
}





struct PreDefineButtonStyles: View {
    var body: some View {
        
        VStack(spacing: 15) {
            Spacer()
            Spacer()
            
            // buttonStyle .........
            //Automatically adapting with light/dark mode
            Button("ButtonStyle 1") {
                
            }
            .buttonStyle(.plain)
            
            
            
            Button("ButtonStyle 2") {
                
            }
            .buttonStyle(.automatic) //Default is borderless
            
            
            
            Button("ButtonStyle 3") {
                
            }
            .buttonStyle(.borderless)
            
            
            
            
            Button("ButtonStyle 4") {
                
            }
            .buttonStyle(.bordered)
            
            
            
            Button("ButtonStyle 5") {
                
            }
            .buttonStyle(.borderedProminent)
            //OPTION 1: We can set accent Color here
            //OPTION 2: Asserts -> AccentColor - > Show Color Pannel to select color
            .accentColor(.orange)
            
            Spacer()
            
            
            
            
            
            
            
            // controlSize.........
            // controlSize Size dependents on the button label: it doesn't depend on frame we are giving to our button
            
            Button("controlSize 1") {
                
            }
            .buttonStyle(.borderedProminent) //Default is borderless
            .controlSize(.mini)
            
            
            Button("controlSize 2") {
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            
            Button("controlSize 3") {
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            
            Button("controlSize 4") {
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            
            Button("controlSize 5") {
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            
            
            Spacer()
            
            
            
            
            
            
            
            
            
            
            // How we can customize size using frame and controlSize
            //When we apply frame on button, size DOSEN'T take frame size
            Button {
                
            } label: {
                Text("Button Frame extraLarge")
            }
            .frame(width: 300, height: 50)
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge) //Button Frame is 300px but button size is still less
            .background(.gray)

            
            
            //When we apply frame on button label, size EQUAL to frame size
            Button {
                
            } label: {
                Text("Label Frame extraLarge")
                    .frame(width: 300, height: 50)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge) //Frame is 300 for label : And button size is large
            .background(.gray)
            
            
            Spacer()
            
            

            
            
            
            
            
            // buttonBorderShape.........
            HStack(spacing: 20) {
                Button("Btn 1") { //Border is in default shape
                    
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                
                
                
                Button("Btn 2") {
                    
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.capsule) //Border is capsule shape
                
                
                
                
                Button("Btn 3") {
                    
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.circle) //Border is circle shape
            }
            
            Spacer()
            Spacer()
        }
        
    }
}



#Preview {
    //ButtonsContentView()
    PreDefineButtonStyles()
}
