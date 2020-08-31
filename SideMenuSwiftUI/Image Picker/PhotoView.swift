//
//  PhotoView.swift
//  SideMenuSwiftUI
//
//  Created by Hxtreme on 29/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct PhotoView: View {
     @Binding var isShowPhotoLibrary    : Bool
       @Binding var image              : Image?
       
       var body: some View {
        ImagePicker(isShowPhotoLibrary: $isShowPhotoLibrary, selectedImage: $image)
       }
}

//struct PhotoView_Previews: PreviewProvider {
//    static var previews: some View {
////        PhotoView(isShowPhotoLibrary: .constant(false), image: .constant(Image("")))
//    }
//}
//
