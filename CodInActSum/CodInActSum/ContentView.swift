//
//  ContentView.swift
//  CodInActSum
//
//  Created by Markus Lu on 15/5/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Group{
                NewsView()
                    .tabItem{
                        Label("News", systemImage: "newspaper.fill")
                    }
                DriveSimView().tabItem{Label("Analyse", systemImage: "eye.fill")}
            }
        }
            .accentColor(.red)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
