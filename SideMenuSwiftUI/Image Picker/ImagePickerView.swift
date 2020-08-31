//
//  ImagePickerView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 29/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct ImagePickerView: View {

    @State private var isShowPhotoLibrary = false
    @State private var image : Image? = nil

    var body: some View {
        VStack {

//            Image(uiImage: self.image)
//                .resizable()
//                .scaledToFill()
//                .frame(minWidth: 0, maxWidth: .infinity)
//                .edgesIgnoringSafeArea(.all)
            image?.resizable().scaledToFit()
            Button(action: {
                self.isShowPhotoLibrary = true
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))

                    Text("Photo library")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
                
            }
        }.sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(isShowPhotoLibrary: self.$isShowPhotoLibrary, selectedImage: self.$image)
//            PhotoView(isShowPhotoLibrary: self.$isShowPhotoLibrary, image: self.$image)
        }
    }
}



struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
