//
//  CatagoryTitleView.swift
//  Evlla
//
//  Created by Dambar Bista on 5/7/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct CatagoryTitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .leftAligned()
            .padding(.leading, 20)
    }
}

struct CatagoryTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryTitleView(title: "")
    }
}
