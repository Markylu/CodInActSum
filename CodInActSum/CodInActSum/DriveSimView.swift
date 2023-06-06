//
//  DriveSimView.swift
//  CodInActSum
//
//  Created by Declan Ng on 19/5/2023.
//

import SwiftUI

struct DriveSimView: View {
    var body: some View {
        GeometryReader{ geo in
            ScrollView {
                VStack{
                    Image("Race-analysis")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .position(x:196,y:360)
                }
            }
        }
    }
}

struct DriveSimView_Previews: PreviewProvider {
    static var previews: some View {
        DriveSimView()
    }
}
