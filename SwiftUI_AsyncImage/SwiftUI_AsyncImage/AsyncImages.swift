//
//  AsyncImages.swift
//  SwiftUI_AsyncImage
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI

struct AsyncImages: View {
    
    let url = URL(string: "https://fastly.picsum.photos/id/12/2500/1667.jpg?hmac=Pe3284luVre9ZqNzv1jMFpLihFI6lwq7TPgMSsNXw2w")
    
    var body: some View {
        VStack(spacing: 20) {
            
            //Downloaded image will display in original size using this AsyncImage(ur:)
            //Bydefault AsyncImages() shows placeholder image of frame size
            //Bydefault AsyncImage providing caching -
            //Caching Yes — but only with system-level (URLCache) caching, not a custom in-memory cache like Kingfisher or SDWebImage.
            
            //AsyncImage(url: url)
            
            
            //We can give scaling factor for downloaded image
            Text("Image with Scale factor 15")
            AsyncImage(url: url, scale: 15) //Larger the scale value, smaller the image
            
            
            
            //We can give own placeholder
            Text("Image with Placeholder as loader")
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } placeholder: {
                //we can give own placeholder
                ProgressView()
            }
            
            
            
            
            //We can get imagePhase which is enum with different cases
            Text("Image with Image Phases options")
            AsyncImage(url: url) { imagePhase in
                switch imagePhase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                case .failure(let error):
                    Text("Image is Failed to download \(error.localizedDescription)")
                @unknown default:
                    Text("Default Case")
                }
            }
            
            
            Text("Image with Animation")
            //Transaction is neet to set for animation
            AsyncImage(url: url, transaction: Transaction(animation: .spring(duration: 3.0))) { imagePhase in
                switch imagePhase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .transition(.slide)
                case .failure(let error):
                    Text("Image is Failed to download \(error.localizedDescription)")
                @unknown default:
                    Text("Default Case")
                }
            }
        }
    }
}

#Preview {
    AsyncImages()
}
