//
//  SegmentedControlStandings.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-26.
//

import SwiftUI

struct SegmentedControlStandings: View {
    @EnvironmentObject var vm: standingsCall
    
    init() {
        //this changes the "thumb" that selects between items
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        //this will change the font size
        UISegmentedControl.appearance().setTitleTextAttributes([.font : UIFont.preferredFont(forTextStyle: .largeTitle)], for: .normal)
        
        //these lines change the text color for various states
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
    }
    
        
    var body: some View {
        VStack {
            Picker("Conference", selection: self.$vm.conferenceSelection) {
                Text("Eastern").tag("Eastern")
                Text("Western").tag("Western")
            }.pickerStyle(SegmentedPickerStyle())
            .onChange(of: vm.conferenceSelection) { conference in
                vm.fetchStandings()
            }
        }
    }
}

struct SegmentedControlStandings_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlStandings()
            .environmentObject(standingsCall())
    }
}
