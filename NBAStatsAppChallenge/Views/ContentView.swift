//
//  ContentView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: standingsCall
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("custom-gray"))
    }
    
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
                    .navigationTitle("Games")
            }
            .tabItem {
                Label("Home", systemImage: "sportscourt")
            }
            
            NavigationView {
                StandingsView()
                    .navigationTitle("Standings")
            }.tabItem {
                Label("Standings", systemImage: "list.number")
            }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }.font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
