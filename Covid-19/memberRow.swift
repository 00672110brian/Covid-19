//
//  memberRow.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI

struct memberRow: View {
 var member: member
 
 var body: some View {

      
    VStack(alignment: .leading){
        Text("洲："+member.continent)
            .bold()
      
            Text("國家："+member.country)
            .bold()

            
            Text("感染數："+member.cases)
            .bold()
     
            Text("死亡數："+member.deaths)
            .bold()
    
            Text("回復人數："+member.recovered)
            .bold()
   

        }
    }
}
