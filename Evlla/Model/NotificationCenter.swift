//
//  NotificationCenter.swift
//  Evlla
//
//  Created by Dambar Bista on 7/12/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import NotificationCenter

// this method will handle to send notification to user 

struct NotificationCenter {
    static func sendMotivationQuotes(with quotes: String) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if error != nil {
                print("Access Denied")
            }
        }
        // Content of Notification
        let content             = UNMutableNotificationContent()
        content.title           = "Morning Motivation"
        content.body            = quotes

        //  Date and Time to send notification
        var dateComponent       = DateComponents()
        dateComponent.hour      = 6 // 6: 01 am
        dateComponent.minute    = 01
        center.removeAllPendingNotificationRequests()
        
        // sending triger
        let trigger             = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: true)
        let request             = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        center.add(request) { (error) in
            
            if error != nil {
                print("error from register request")
                
            }
        }
    }
}
