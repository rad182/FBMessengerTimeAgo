//
//  NSDate+FBMessengerTimeAgo.swift
//  NSDate+FBMessengerTimeAgo
//
//  Created by Royce Dy on 10/14/2016.
//  Copyright © 2016 Royce Dy. All rights reserved.
//

public extension NSDate {

    func formattedTimeAgo() -> String {
        let calendar = NSCalendar.currentCalendar()
        let dateFormatter = NSDateFormatter()
        dateFormatter.AMSymbol = "am"
        dateFormatter.PMSymbol = "pm"

        if calendar.isDateInToday(self) {
            dateFormatter.dateFormat = "h:mm a"
        } else if self.dayDifference() <= 6 {
            dateFormatter.dateFormat = "E"
        } else if calendar.isDate(self, equalToDate: NSDate(), toUnitGranularity: .Year) {
            dateFormatter.dateFormat = "MMM d"
        } else {
            dateFormatter.dateFormat = "MM/dd/yyyy"
        }

        return dateFormatter.stringFromDate(self)
    }

    private func dayDifference() -> Int {
        let calendar = NSCalendar.currentCalendar()

        let from = calendar.startOfDayForDate(self)
        let to = calendar.startOfDayForDate(NSDate())

        let components = calendar.components([.Day], fromDate: from, toDate: to, options: [])

        return components.day ?? 0
    }

}
