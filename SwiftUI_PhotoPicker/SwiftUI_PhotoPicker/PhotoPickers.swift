//
//  PhotoPickers.swift
//  SwiftUI_PhotoPicker
//
//  Created by Ambreen Bano on 05/10/25.
//

import SwiftUI
import PhotosUI //Import PhotosUI framework for using PhotoPicker


//https://picsum.photos/

struct PhotoPickers: View {
    
    @State var selectedPhotoItem: PhotosPickerItem?
    @State var selectedPhoto: UIImage?
    
    var body: some View {
        
        VStack(spacing: 20) {
            //Using UIImage to display image on screen
            if let selectedPhoto {
                Image(uiImage: selectedPhoto)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            }
        
            //This will open photo library to select photos
            PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                Text("Select a Photo")
                    .bold()
                    .fontWeight(.heavy)
                    .frame(width: 200, height: 50)
                    .background(Color.teal)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            
            //WE can give matching options also
            // PhotosPicker(selection: $selectedPhotoItem, matching: .all(of: [.images, .videos])) {
            //     Text("Select a Photo or Video")
            // }
            
        }
        //OnChange we can call on any property to check if that property is chnaging and if chnage that code block will execute
        .onChange(of: selectedPhotoItem) { _ , newValue in
            // loadTransferable method is Async so we need to call inside Task{}
            Task {
                //PhotoPicker gives PhotosPickerItem, that we need to change into data
                if let data = try? await newValue?.loadTransferable(type: Data.self) {
                    //We need to convert data into UIImage
                    selectedPhoto = UIImage(data: data)
                }
            }
        }
    }
}



struct PhotoPickersForMultipleSelection: View {
    
    @State var selectedPhotoItems: [PhotosPickerItem] = []
    @State var selectedPhotos: [UIImage] = []
    
    var body: some View {
        
        VStack(spacing: 20) {
            //Using UIImage to display image on screen
            if selectedPhotos.count > 0 {
                ForEach(selectedPhotos.indices, id: \.self) { index in
                    Image(uiImage: selectedPhotos[index])
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }
            }
        
            //This will open photo library to select photos
            PhotosPicker(selection: $selectedPhotoItems, matching: .images) {
                Text("Select a Photo")
                    .bold()
                    .fontWeight(.heavy)
                    .frame(width: 200, height: 50)
                    .background(Color.teal)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            
        }
        .onChange(of: selectedPhotoItems) { _ , newValue in
            Task {
                getPhotos(photosPickerItems: newValue)
            }
        }
    }
    
    
    func getPhotos(photosPickerItems: [PhotosPickerItem]){
        Task {
            if photosPickerItems.count > 0 {
                //Clear previous selected items from array of photos
                selectedPhotos.removeAll()
            }
            for photoItem in photosPickerItems {
                if let data = try? await photoItem.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        selectedPhotos.append(uiImage)
                    }
                }
            }
        }
    }
}

#Preview {
    //PhotoPickers()
    PhotoPickersForMultipleSelection()
}
