//
//  HomeView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            SegmentedControlView()
                .padding()
            ScrollView(showsIndicators: false) {
                ForEach(0 ..< 1) { item in
                    RectangleView()
                        .shadow(radius: 1)
                }.listRowBackground(Color("custom-gray"))
            }            
        }.modifier(homeViewModifier())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
