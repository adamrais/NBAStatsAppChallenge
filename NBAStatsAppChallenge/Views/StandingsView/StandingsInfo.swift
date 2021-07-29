//
//  StandingsInfo.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-26.
//

import SwiftUI

struct StandingsInfo: View {
    var body: some View {
        VStack {
            Divider()
            HStack {
                Text("#")
                Text("Team")
                Spacer()
                Text("W - L")
            }.modifier(leftRightPadding())
            Divider()
        }
    }
}

struct StandingsInfo_Previews: PreviewProvider {
    static var previews: some View {
        StandingsInfo()
    }
}
