//
//  memberview.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI

struct memberView: View {

@EnvironmentObject var membersData : MemberData
 @State private var members = [member]()

 func fetchmembers() {
     let urlStr = "https://interactive-static.scmp.com/sheet/wuhan/viruscases.json"
     if let url = URL(string: urlStr) {
       URLSession.shared.dataTask(with: url) { (data, response, error) in
       let decoder = JSONDecoder()
         if let data = data {
           do {
             let memberResults = try decoder.decode(MemberResults.self, from: data)
            self.members=memberResults.entries
               } catch {
                   print(error)
               }
             }
           }.resume()
         }
 }
    
    var body: some View {
            NavigationView {
                VStack(alignment: .center){
                List(members.indices, id: \.self, rowContent:
                    { (index) in NavigationLink(destination: memberDetail(member:self.members[index])) {
                        memberRow(member: self.members[index])
                    }.navigationBarTitle("各國COVID-19的案例")
                    })
                    .onAppear {
                    self.fetchmembers()
                    }
                }
        }
    }
}

struct memberView_Previews: PreviewProvider {
    static var previews: some View {
        memberView()
    }
}

