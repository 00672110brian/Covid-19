//
//  memberDetail.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI


struct memberDetail: View {
     var member:member
     var body: some View {
         VStack {
    
            WebLink(urlString: "https://en.wikipedia.org/wiki/\(member.country.replacingOccurrences(of: " ", with: "_").replacingOccurrences(of: "*", with: ""))")

         }

     }
}

