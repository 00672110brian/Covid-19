//
//  ImagePickerTabView.swift
//  Covid-19
//
//  Created by User02 on 2020/6/24.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI


struct ImagePickerTabView: View {
 @State private var selectImage = Image(systemName: "photo")
 @State private var showSelectPhoto = false

     var body: some View {

         Button(action: {
         self.showSelectPhoto = true
         }) {
         selectImage
         .resizable()
         .scaledToFit()
         .frame(width: 300, height: 200)
         .clipped()

         }
         .buttonStyle(PlainButtonStyle())
         .sheet(isPresented: $showSelectPhoto) {
         ImagePickerController(showSelectPhoto: self.$showSelectPhoto, selectImage: self.$selectImage)
         }
     }
}

struct ImagePickerTabView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerTabView()
    }
}


