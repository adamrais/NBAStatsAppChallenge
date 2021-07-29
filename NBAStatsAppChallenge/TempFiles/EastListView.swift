//
//  EastListView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-27.
//

import SwiftUI

struct EastListView: View {
    @State var standings = [standingData]()
    @EnvironmentObject var vm: standingsCall
    var body: some View {
        VStack {
            List(standings, id: \.TeamID) { standing in
                StandingRow(teamID: standing.TeamID, teamName: standing.Name, W: standing.Wins, L: standing.Losses)
            }.listRowBackground(Color("custom-gray"))
            .onAppear {
//                vm.getStocks { standings in
//                    self.standings = standings
//                }
            }
        }
    }
}

struct EastListView_Previews: PreviewProvider {
    static var previews: some View {
        EastListView()
            .environmentObject(standingsCall())
    }
}
