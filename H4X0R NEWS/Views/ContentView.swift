//
//  ContentView.swift
//  H4X0R NEWS
//
//  Created by Atakan Cicek on 1/10/23.
//

import SwiftUI
import WebKit


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{ 
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        
        .onAppear{
            self.networkManager.fetchData()
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "bonjour"),
//    Post(id: "3", title: "hola"),
//]
