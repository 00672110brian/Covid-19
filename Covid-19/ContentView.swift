//
//  ContentView.swift
//  Covid-19
//
//  Created by User02 on 2020/6/16.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let membersData = MemberData()
       let newsData = NewsData()
    var body: some View {
         TabView {
               memberView()
                   .tabItem {
                       Image(systemName: "i.circle.fill")
                           .font(Font.system(size: 30, weight: .bold))
                       Text("Information")
               }
            newsView()
                .tabItem {
                    Image(systemName: "book")
                        .font(Font.system(size: 30, weight: .bold))
                    Text("News")
            }
            video()
                .tabItem {
                    Image(systemName: "livephoto.play")
                        .font(Font.system(size: 30, weight: .bold))
                    Text("video")
            }

               QR()
                   .tabItem {
                           
                           Image(systemName: "qrcode")
                              .font(Font.system(size: 30))
                           Text("QRcode")
                   }
            ImagePickerTabView()
            .tabItem {
                    
                    Image(systemName: "recordingtape")
                       .font(Font.system(size: 30))
                    Text("QRcode")
            }
            }.environmentObject(membersData).environmentObject(newsData)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
