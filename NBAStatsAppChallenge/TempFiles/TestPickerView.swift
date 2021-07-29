//
//  TestPickerView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-27.
//

import SwiftUI

struct TestPickerView: View {
    @State var selectedConference = 0
    @ObservedObject private var utils = utilsViews.shared
    var body: some View {
        VStack {
            SegmentedControlStandings()
//            utils.conferenceControlFlow(conference: selectedConference, standing: "Western")
        }
    }
}

struct TestPickerView_Previews: PreviewProvider {
    static var previews: some View {
        TestPickerView()
    }
}
