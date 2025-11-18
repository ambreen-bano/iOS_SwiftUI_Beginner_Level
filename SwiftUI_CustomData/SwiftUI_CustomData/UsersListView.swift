//
//  UsersListView.swift
//  SwiftUI_CustomData
//
//  Created by user2 on 06/10/25.
//

import SwiftUI

struct UsersListView: View {
    
    //@State - We are creating model class variable here with @State as we need to check if any chnages in user model then will re-render our view
    @State var users: [UserModel] = [
        UserModel(displayName: "Amber", userName: "Amber@123", followers: 205, isVerified: true),
        UserModel(displayName: "Safia", userName: "Safia@123", followers: 300, isVerified: false),
        UserModel(displayName: "Iram", userName: "Iram@123", followers: 103, isVerified: true),
        UserModel(displayName: "Anika", userName: "Anika@123", followers: 625, isVerified: true)
    ]
    

    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    
                    HStack { //START: HStack
                        Circle()
                            .frame(width: 30)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text(user.userName)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                           
                        VStack {
                            Text("\(user.followers)")
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }//END: HStack
                    
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UsersListView()
}
