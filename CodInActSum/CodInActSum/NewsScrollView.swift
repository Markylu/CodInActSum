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
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.it-is-what-it-is-perez-rues-costly-qualifying-display-in-spain-but-aims-to.6D3tnM3dW1sK4UCDOaUtsE.html")!) {
                            Image("News 1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.norris-rues-unlucky-first-lap-collision-with-hamilton-but-says-spanish-gp.cgtPtQIMCsw6ntFopyz21.html")!) {
                            Image("News 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.hamilton-hails-really-mega-progress-for-mercedes-after-double-podium-in.5oglWxSrTxz4Xr4fgTCp8E.html")!) {
                            Image("News 3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.our-sights-are-set-on-victory-russell-wants-more-after-terrific-drive-to.4aCZuoGNqbfFxvcMXGwhvl.html")!) {
                            Image("News 4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.official-grid-who-starts-where-for-sundays-spanish-grand-prix-after.17oDwyyqkDhrBrC8TYHoQY.html")!) {
                            Image("News 5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.i-did-my-absolute-best-says-gutted-sainz-as-he-misses-out-on-a-home-podium.kGwLBuDYWIfDtAQw9wkQ2.html")!) {
                            Image("News 6")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Link(destination: URL(string: "https://www.formula1.com/en/latest/article.the-car-definitely-felt-good-norris-praises-his-mclaren-team-after-p3-in.61b7JJYhPWXl6HtLPVBcWn.html")!) {
                            Image("News 7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                        }
                    }
                    HStack{
                        Text("You're All Caught Up!")
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
