//
//  SwiftUI_Text.swift
//  SwiftUI_Basics_Part1
//
//  Created by Ambreen Bano on 27/09/25.
//

import SwiftUI

//Added By Typing Text(...
//Added By Clicking at + to add Text and drag it in code
//All . are modifiers
//Order of modifiers are applied on top of the view created stage till the modifier

struct TextContentView: View {
    var body: some View {
        Spacer()
        
        Text("Added by typing Text()".uppercased())
        
        Text("Added by clicking + and drag Text() in the code".capitalized)
        
        
        
        Text("Hi Ambreen1")
            .font(.body)
        
        Text("Hi Ambreen1") //Nothing Hardcoded font size WILL ADOPT according to the font size of the device if user changes font size from device settings
            .font(.system(.headline))
        
        
        
        Text("Hi Ambreen2") //Hardcoded font size 24 will NOT ADOPT according to the font size of the device if user changes font size from device settings
            .font(.system(size: 24, weight: .bold, design: .rounded))
        
        Text("Hi Ambreen2")
            .font(.system(size: 24, weight: .bold, design: .serif))
        
        
        
        Text("Hi Ambreen3")
            .fontWeight(.bold)
        
        Text("Hi Ambreen3")
            .bold()
            .italic()
        
        
        
        Text("Hi Ambreen4")
            .underline()
        
        Text("Hi Ambreen4")
            .underline(color: .red)
        
        
        
        Text("Hi Ambreen5")
            .strikethrough()
        
        Text("Hi Ambreen5")
            .strikethrough(color: .green)
        
        
        
        Text("Hi Ambreen")
            .foregroundColor(.red)
        
        Text("Hi Ambreen")
           
        
        
        
        //By default text is left aligned
        Text("If the preview canvas does not appear or behaves unexpectedly .....")
        
        //Text will center aligned and multiline
        Text("Multi - If the preview canvas does not appear or behaves unexpectedly .....")
            .multilineTextAlignment(.center)
        
        Spacer()
       
        
        
        
        //Line spacing for bottom in lines
        Text("baselineOffset - If the preview canvas does not appear or behaves unexpectedly. line spacing top in line")
            .multilineTextAlignment(.center)
            .baselineOffset(20)
        
        
        //Line spacing for top in lines
        Text("baselineOffset - If the preview canvas does not appear or behaves unexpectedly. line spacing top in line")
            .multilineTextAlignment(.center)
            .baselineOffset(-20)
        
        
        
        
        //Text will display only inside specified frame area
        Text("Hi Ambreen")
            .frame(width: 80, height: 30)
        
        //Text will display only inside specified frame area with scaling to show entire text
        Text("Hi Ambreen")
            .frame(width: 80, height: 30)
            .minimumScaleFactor(0.1) //Text can be scale down to 10% from original font to fit in specified frame area
        
        
        
        
        //By Default frame contents are center aligned
        Text("Hi Ambreen")
            .frame(width: 300, height: 30)
        
        //We can set alignment to center for contents of the frame
        Text("Hi Ambreen")
            .frame(width: 300, height: 30, alignment: .leading)
        
        
        
        
        
        //Allow text to COPY or SHARE
        //.textSelection allow text COPY and SHARE
        Text("COPY and SHARE with Long Press/Manual Selection")
            .textSelection(.enabled)
            .textSelectionAffinity(.downstream) //selection toward the end of the text when we drag.
        
        Text("COPY and SHARE ONLY with Long Press ")
            .textSelection(.disabled)
        Spacer()
    }
}

#Preview {
    TextContentView()
}


