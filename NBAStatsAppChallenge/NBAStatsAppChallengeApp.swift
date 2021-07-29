//
//  NBAStatsAppChallengeApp.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

import SwiftUI

@main
struct NBAStatsAppChallengeApp: App {
    @StateObject var vm = standingsCall()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
