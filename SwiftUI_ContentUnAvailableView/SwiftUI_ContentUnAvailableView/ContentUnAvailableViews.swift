//
//  ContentUnAvailableViews.swift
//  SwiftUI_ContentUnAvailableView
//
//  Created by user2 on 05/10/25.
//

import SwiftUI

struct ContentUnAvailableViews: View {
    var body: some View {
        
        ContentUnavailableView("This is my Title", systemImage: "wifi.slash", description: Text("This is my Content unavailable View Description"))
    }
}


struct DefaultContentUnAvailableViewForSearch: View {
    var body: some View {
        
        ContentUnavailableView.search(text: "for ABC")
    }
}


#Preview {
    ContentUnAvailableViews()
}

#Preview {
    DefaultContentUnAvailableViewForSearch()
}
