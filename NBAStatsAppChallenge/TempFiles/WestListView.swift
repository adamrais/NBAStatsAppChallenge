//
//  WestListView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-27.
//

import SwiftUI

struct WestListView: View {
    @EnvironmentObject var vm: standingsCall
    var body: some View {
        VStack {
            List(vm.standings, id: \.Key) { standing in
                StandingRow(teamID: standing.TeamID, teamName: standing.Name, W: standing.Wins, L: standing.Losses)
            }.listRowBackground(Color("custom-gray"))
            .onAppear {
                vm.fetchStandings()
            }
        }
    }
}

struct WestListView_Previews: PreviewProvider {
    static var previews: some View {
        WestListView()
            .environmentObject(standingsCall())
    }
}
