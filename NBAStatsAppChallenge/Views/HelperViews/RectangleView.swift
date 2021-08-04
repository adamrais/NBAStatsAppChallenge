//
//  RectangleView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-05.
//

import SwiftUI

struct RectangleView: View {
    var AwayTeam: String
    var HomeTeam: String
    var AwayTeamScore: Int
    var HomeTeamScore: Int
    
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
                            Text("\(HomeTeam)")
                                .fontWeight(.light)
                            Text("\(HomeTeamScore)")
                                .fontWeight(.light)
                        }
                        Text("VS")
                        VStack {
                            Image("visitor-team")
                                .imageLogoModifier()
                            Text("\(AwayTeam)")
                            Text("\(AwayTeamScore)")
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
        RectangleView(AwayTeam: "adam", HomeTeam: "adam2", AwayTeamScore: 5, HomeTeamScore: 6)
    }
}
