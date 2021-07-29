//
//  Extension+Image.swift
//  NBAStatsAppChallenge
//
//  Created by Adam Rais on 2021-07-23.
//

import Foundation
import SwiftUI

extension Image {
    func imageLogoModifier() -> some View {
        self
            .resizable()
            .frame(width: 50, height: 50)
   }
}
