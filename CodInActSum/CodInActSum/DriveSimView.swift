//
//  DriveSimView.swift
//  CodInActSum
//
//  Created by Declan Ng on 19/5/2023.
//

import SwiftUI

struct DriveSimView: View {
    var body: some View {
        VStack {
            Image("Race-analysis")
            .resizable()
            //.scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        }
       
    }
}

struct DriveSimView_Previews: PreviewProvider {
    static var previews: some View {
        DriveSimView()
    }
}
