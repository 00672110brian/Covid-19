//
//  member.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//
import Foundation


struct member: Codable {
 var continent: String
 var country: String
 var cases: String
 var deaths: String
 var recovered: String
}
struct MemberResults: Codable {

 var entries: [member]
}

class MemberData: ObservableObject {
 @Published var members = [member]()
}
