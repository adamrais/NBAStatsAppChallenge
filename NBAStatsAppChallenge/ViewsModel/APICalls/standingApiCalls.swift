//
//  standingApiCalls.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-28.
//

import Foundation

class standingsCall: ObservableObject {
    @Published var standings = [standingData]()
    @Published var conferenceSelection = "Eastern"
    @Published var fixtures = [Fixture]()
    
    func fetchStandings() {
            let urlString = "https://api.sportsdata.io/v3/nba/scores/json/Standings/2021?key=cbb647ed20f9450c931354ff0d89f8c1"
            
            guard let url = URL(string: urlString) else {
                print("Invalid URL")
                return
            }
            
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    do {
                        let decodedResponse = try JSONDecoder().decode([standingData].self, from: data)
                        let filteredDecodedResponse = decodedResponse.filter { $0.Conference == self.conferenceSelection }
                        DispatchQueue.main.async {
                            self.standings = filteredDecodedResponse
                        }
                        return
                    } catch {
                        print("Unable to fetch team logo URL")
                    }
                }
            }.resume()
        }
    
    func fetchFixtures() {
        let urlString = "https://api.sportsdata.io/v3/nba/scores/json/GamesByDate/2021-JUN-05?key=cbb647ed20f9450c931354ff0d89f8c1"
        //let urlString = "https://api.sportsdata.io/v3/nba/scores/json/GamesByDate/\(fixtureDate)?key=cbb647ed20f9450c931354ff0d89f8c1"
        
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode([Fixture].self, from: data)
                    DispatchQueue.main.async {
                        self.fixtures = decodedResponse
                        print("Able to fetch fixtures")
                    }
                    return
                } catch {
                    print("Unable to fetch fixtures")
                }
            }
            print("Fixtures fetch request failed: \(error?.localizedDescription ?? "Unknown Error")")
        }.resume()
    }
}
