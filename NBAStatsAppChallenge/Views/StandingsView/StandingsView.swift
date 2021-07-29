//
//  StandingsView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

// TODO fix issue with scrollView
import SwiftUI

struct StandingsView: View {
    @EnvironmentObject var vm: standingsCall
    var body: some View {
        VStack {
            SegmentedControlStandings()
                .padding(.top)
            StandingsInfo()
                .modifier(leftRightPadding())
            ScrollView(showsIndicators: false) {
                ForEach(vm.standings, id: \.TeamID) { standing in
                    StandingRow(teamID: standing.ConferenceRank, teamName: standing.Name, W: standing.Wins, L: standing.Losses)
                        .modifier(leftRightPadding())
                }
           }
        }.modifier(standingViewModifier())
        .onAppear {
            vm.fetchStandings()
        }
    }
}

struct StandingsView_Previews: PreviewProvider {
    static var previews: some View {
        StandingsView()
            .environmentObject(standingsCall())
    }
}
