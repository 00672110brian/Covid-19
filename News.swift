//
//  News.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation



struct News: Codable {
 var author: String?
 var title: String
 var description: String?
 var url: URL
 var publishedAt: String
}
struct NewsResults: Codable {

 var articles: [News]
}
class NewsData: ObservableObject {
 @Published var news = [News]()
}
