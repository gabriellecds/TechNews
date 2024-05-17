//
//  ContentView.swift
//  Tech News
//
//  Created by Gabrielle Oliveira on 16/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            NavigationView{
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("Tech News")
            }
            .onAppear(perform: {
                networkManager.fetchData()
            })
        }
    }
}

#Preview {
    ContentView()
}
