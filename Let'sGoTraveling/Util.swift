//
//  Util.swift
//  Let'sGoTraveling
//
//  Created by Jae kwon Choi on 2023/08/20.
//

import Foundation
import SwiftUI

extension Color {
    static func rgbo(_ r: Double, _ g: Double, _ b: Double, _ o: Double = 1.0) -> Self {
        Color(red: r/255, green: g/255, blue: b/255, opacity: o)
    }
}

