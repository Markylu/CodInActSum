//
//  NewsView.swift
//  CodInActSum
//
//  Created by Markus Lu on 2/6/2023.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack{
            Text("Latest News")
                .font(.custom("DimitriSwank",size: 60))
                
                
            Spacer(minLength: 300)
            VStack{
                NewsScrollView()
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
