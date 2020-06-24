//
//  QRCodeView.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView : View{
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var url : String

    var body:some View{
        Image(uiImage:generateQRCodeImage(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
        
    }
    func generateQRCodeImage(_ URL : String) ->UIImage{
            let data = Data(url.utf8)
            filter.setValue(data, forKey: "inputMessage")
            
            if let qrCodeImage = filter.outputImage{
                if let qrcodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent){
                        return UIImage(cgImage: qrcodeCGImage)
                    }
                }
            return UIImage(systemName: "xmark") ?? UIImage()
        }
}
