//
//  newsrow.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI

struct newsrow: View {
    var News: News
    
    var body: some View {
            
        VStack(alignment: .leading) {
                
                
                Text("作者："+(News.author ?? "沒有資料"))
                    .bold()
                    .padding()
                
                
                Text("標題："+News.title)
                    .bold()
                    .padding()
                
                Text("簡介：" + (News.description ?? "") )
                    .bold()
                    .padding()
                Text("出版時間："+News.publishedAt)
                    .bold()
                    .padding()
                
            }
        }
    
}
