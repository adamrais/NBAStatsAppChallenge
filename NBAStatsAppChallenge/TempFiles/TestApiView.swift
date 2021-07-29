//
//  TestApiView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-28.
//

import SwiftUI

struct TestApiView: View {
    @State var standings = [standingData]()
    @EnvironmentObject var vm: standingsCall
    var body: some View {
        NavigationView {
            VStack {
                List(standings, id: \.Key) { standing in
                    HStack {
                        if standing.Conference == "Eastern" {
                            Text("\(standing.ConferenceRank)")
                            Spacer()
                            Text("\(standing.Name)")
                        }
                    }
                }.onAppear {
                    vm.fetchStandings()
                }
                
            }
            .navigationBarTitle("Markets")
            .listStyle(PlainListStyle())
        }
    }
}

struct TestApiView_Previews: PreviewProvider {
    static var previews: some View {
        TestApiView()
    }
}
