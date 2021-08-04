//
//  ViewsModifiers.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-23.
//

import SwiftUI

struct homeViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .position(x: 195, y: 550)
            .background(Color("custom-gray"))
            .ignoresSafeArea(.container)
        }
}

struct rectangleHomeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(radius: 1)
    }   
}
