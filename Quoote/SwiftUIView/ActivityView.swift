//
//  ActivityView.swift
//  Evlla
//
//  Created by Dambar Bista on 5/8/23.
//  Copyright © 2023 Dambar Bista. All rights reserved.
//

import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
    var activityItems: [String]
    var applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activityItems: [])
    }
}
