//
//  SettingsViews.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-03.
//

import SwiftUI

struct SettingsView: View {
    @State var notificationsEnabled: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                }
                
                Section(header: Text("TBD")) {
                    Section {
                        HStack {
                            Text("Feedback")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        HStack {
                            Text("Please Rate This App")
                            Spacer()
                            Image(systemName: "star")
                        }
                    }
                }
                
                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.0")
                    }
                    Text("About us")
                    Text("Copyright Info")
                    Text("Privacy Policy")
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
