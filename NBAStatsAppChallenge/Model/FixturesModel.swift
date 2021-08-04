//
//  FixturesModel.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-30.
//

import Foundation

struct Fixture: Codable {
    var GameID: Int
    var Status: String
    var Day: Date
    //var DateTime: Date
    var AwayTeam: String
    var HomeTeam: String
    var AwayTeamScore: Int
    var HomeTeamScore: Int
}
