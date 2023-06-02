//
//  NewsScrollView.swift
//  CodInActSum
//
//  Created by Markus Lu on 2/6/2023.
//

import SwiftUI

struct NewsScrollView: View {
    var body: some View {
        GeometryReader{ geo in
            ScrollView {
                VStack{
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                    HStack{
                        Text("hello world")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 200)
                    }
                }
            }
        }
    }
}

struct NewsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NewsScrollView()
    }
}
