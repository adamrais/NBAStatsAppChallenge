//
//  StandingRow.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-26.
//

import SwiftUI

struct StandingRow: View {
    
    let teamID: Int
    let teamName: String
    let W: Int
    let L: Int
    
    var body: some View {
        HStack {
            Text("\(teamID)")
            Text("\(teamName)")
            Spacer()
            Text("\(W) - \(L)")
        }.modifier(standingRowModifiers())
    }
}

struct StandingRow_Previews: PreviewProvider {
    static var previews: some View {
        StandingRow(teamID: 1, teamName: "test", W: 1, L: 1)
    }
}
