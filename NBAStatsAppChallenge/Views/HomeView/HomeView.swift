//
//  HomeView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: standingsCall
    var body: some View {
        VStack {
            SegmentedControlView()
                .padding()
            ScrollView(showsIndicators: false) {
                ForEach(vm.fixtures, id: \.GameID) { fixture in
                    RectangleView(AwayTeam: fixture.AwayTeam, HomeTeam: fixture.HomeTeam, AwayTeamScore: fixture.AwayTeamScore, HomeTeamScore: fixture.HomeTeamScore)
                        .modifier(rectangleHomeModifier())
                }.listRowBackground(Color("custom-gray"))
            }            
        }.modifier(homeViewModifier())
        .onAppear {
            vm.fetchFixtures()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(standingsCall())
    }
}
