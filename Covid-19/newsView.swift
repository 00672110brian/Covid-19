//
//  newsView.swift
//  Covid-19
//
//  Created by User02 on 2020/6/17.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation
import SwiftUI

struct newsView: View {
 @EnvironmentObject var newsData : NewsData
 @State private var news = [News]()

 func fetchmembers() {
     let urlStr = "https://newsapi.org/v2/everything?from=2020&apiKey=88191282b4b54396927247dc1a194ed0&pageSize=100&sortBy=publishedAt&page=1&q=covid"
     if let url = URL(string: urlStr) {
       URLSession.shared.dataTask(with: url) { (data, response, error) in
       let decoder = JSONDecoder()
         if let data = data {
           do {
             let newsResults = try decoder.decode(NewsResults.self, from: data)
            self.news=newsResults.articles
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
                List(news.indices, id: \.self, rowContent:
                    { (index) in NavigationLink(destination: newsDetail(News:self.news[index])) {
                        newsrow(News: self.news[index])
                        }.navigationBarTitle("有關covid-19的新聞")
                    })
                    .onAppear {
                    self.fetchmembers()
                    }
                }
        }
    }
}

struct newsView_Previews: PreviewProvider {
    static var previews: some View {
        memberView()
    }
}
