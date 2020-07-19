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
            if granted {
                print("yay")
            } else if error != nil {
                print("Access Denied")
            }
        }
        
        // Content of Notification
        let content     = UNMutableNotificationContent()
        content.title   = "Morning Motivation"
        content.body    = quotes
        
        //  Date and Time to send notification
        
        let date            = Date().addingTimeInterval(10)
        let dateComponent   = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger         = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: true)
        
        let uuidString      = UUID().uuidString
        let request         = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        center.add(request) { (error) in
            
            if error != nil {
                print("error from register request")
                
            }
        }
    }
    
}
