//
//  RectangleView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-05.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 350, height: 250)
                    .cornerRadius(30)
                VStack {
                    HStack {
                        VStack {
                            Image("home-team")
                                .imageLogoModifier()
                            Text("Name of the team")
                                .fontWeight(.light)
                            Text("Score of the team")
                                .fontWeight(.light)
                        }
                        Text("VS")
                        VStack {
                            Image("visitor-team")
                                .imageLogoModifier()
                            Text("Name of the team")
                            Text("Score of the team")
                        }
                    }
                    Text("Date scheduled")
                }
            }
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
