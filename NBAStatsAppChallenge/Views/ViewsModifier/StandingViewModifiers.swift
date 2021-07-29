//
//  StandingViewModifiers.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-26.
//

import SwiftUI

struct leftRightPadding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading)
            .padding(.trailing)
        }
}

struct standingRowModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .modifier(leftRightPadding())
            .padding(.top).padding(.bottom)
            .background(Color.white.opacity(0.7))
            .shadow(radius: 10)
            .cornerRadius(5)
        }
}

struct standingViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .position(x: 195, y: 550)
            .background(Color("custom-gray"))
            .ignoresSafeArea(.container)
        }
}
