//
//  NewsView.swift
//  CodInActSum
//
//  Created by Markus Lu on 2/6/2023.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5.0)
                .fill(.orange)
                .frame(height:1000)
                .position(x:196,y:300)
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 7.0)
                        .fill(.red)
                        .frame(height:400)
                        .position(x:197,y:-50)
                    VStack{
                        Text("Latest News")
                            .font(.custom("Default", size: 60))
                            .position(x:200,y:50)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("Source: https://www.formula1.com/en/latest/all.html")
                            .padding(.top, -100.0)
                            .position(x:200,y:0)
                            .font(.body)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                }
                NewsScrollView()
                    .padding(.top, -190.0)
                
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
