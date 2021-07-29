//
//  SegmentedControlView.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-04.
//

import SwiftUI

struct SegmentedControlView: View {
    
    init() {
        //this changes the "thumb" that selects between items
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        //this will change the font size
        UISegmentedControl.appearance().setTitleTextAttributes([.font : UIFont.preferredFont(forTextStyle: .largeTitle)], for: .normal)
        
        //these lines change the text color for various states
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
    }
    var dates = ["Yesterday","Today", "Tomorrow"]
    @State private var selectedDate = 0
        
    var body: some View {
        VStack {
            Picker("", selection: $selectedDate) {
                ForEach(0..<dates.count) {
                    Text(dates[$0])
                        .foregroundColor(.red)
                }
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView()
    }
}
