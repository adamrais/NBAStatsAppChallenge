//
//  StandingModel.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-28.
//

import Foundation

struct standingData: Codable {
    
    var Season: Int
    var SeasonType: Int
    var TeamID: Int
    var Key: String
    var City: String
    var Name: String
    var Conference: String
    var Division: String
    var Wins: Int
    var Losses: Int
    //var Percentage: Float
    var ConferenceWins: Int
    var ConferenceLosses: Int
    var DivisionWins: Int
    var DivisionLosses: Int
    var HomeWins: Int
    var HomeLosses: Int
    var AwayWins: Int
    var AwayLosses: Int
    var LastTenWins: Int
    var LastTenLosses: Int
    var PointsPerGameFor: Float
    var PointsPerGameAgainst: Float
    var Streak: Int
    var GamesBack: Float
    var StreakDescription: String
    var GlobalTeamID: Int
    var ConferenceRank: Int
    var DivisionRank: Int
}
