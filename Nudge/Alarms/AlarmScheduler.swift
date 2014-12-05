//
//  AlarmScheduler.swift
//  Nudge
//
//  Created by Shine Wang on 2014-12-04.
//  Copyright (c) 2014 Beyond Intelligence. All rights reserved.
//

import UIKit

// interfaces with local notification settings
class AlarmScheduler {
    
    private let TAG = "AlarmScheduler"
    
    private let message = "Feeling tense? Let's take a breath."
    
    //reschedules all the alarms for this application (removing existing ones)
    func rescheduleAlarms(alarms: [Alarm]) {
        NSLog("(%@) %@", TAG, "rescheduling local notifications")
        
        //we remove all the existing alarms for ease of implementation at cost of efficiency
        UIApplication.sharedApplication().cancelAllLocalNotifications()
        for alarm in alarms {
            if alarm.enabled == false {
                continue
            }
            
            if alarm.repeat == true {
                self.setRepeatAlarm(alarm)
            } else {
                self.setOnetimeAlarm(alarm)
            }
        }
    }
    
    private func setRepeatAlarm(alarm: Alarm) {
        for day in DayOfWeek.allValues {
            if !alarm.dates.contains(day) {
                continue
            }
        }
    }
    
    private func setOnetimeAlarm(alarm: Alarm) {
        
    }
}