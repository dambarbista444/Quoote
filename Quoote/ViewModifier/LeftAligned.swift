//
//  LeftAligned.swift
//  Evlla
//
//  Created by Dambar Bista on 5/7/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

// MARK: - LeftAligned
struct LeftAligned: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            content
            Spacer()
        }
    }
}

extension View {
    func leftAligned() -> some View {
        modifier(LeftAligned())
    }
}
