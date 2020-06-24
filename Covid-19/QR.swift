//
//  QR.swift
//  Covid-19
//
//  Created by User02 on 2020/6/16.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI
import KingfisherSwiftUI

struct QR: View {
    
    @State private var scale: CGFloat = 1
    @State private var show = false

    var body: some View {
 
            ZStack{
                    //
                QRCodeView(url:"https://zh.wikipedia.org/wiki/%E5%86%A0%E7%8A%B6%E7%97%85%E6%AF%92")
                    .offset(y:50)
                            if show{
                                KFImage(URL(string: "https://www.aseanbriefing.com/news/wp-content/uploads/2020/01/Virus.jpg")!)
                                .offset(y:10)
                                .scaleEffect(scale)
                                .scaledToFit()
                                .onLongPressGesture {
                                    self.scale *= 0
                                }
                                .transition(
                                    AnyTransition.scale(scale: 10)
                                        .combined(with: .opacity)
                                )
                            }
                            Text("冠狀病毒相關介紹")
                            .bold()
                            .offset(y:250)
                            Text("(長按可消失病毒)")
                            .bold()
                            .offset(y:300)
                        }
            .animation(.easeIn(duration: 1))
                        .onAppear {
                         self.show = true
                        }
    }
        }

struct QR_Previews: PreviewProvider {
    static var previews: some View {
        QR()
    }
}
