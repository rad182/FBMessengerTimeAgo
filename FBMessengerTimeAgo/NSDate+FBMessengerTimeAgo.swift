//
//  NSDate+FBMessengerTimeAgo.swift
//  NSDate+FBMessengerTimeAgo
//
//  Created by Royce Dy on 10/14/2016.
//  Copyright © 2016 Royce Dy. All rights reserved.
//

public extension Date {

    func formattedTimeAgo() -> String {
        let calendar = NSCalendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.amSymbol = "am"
        dateFormatter.pmSymbol = "pm"

        if calendar.isDateInToday(self) {
            dateFormatter.dateFormat = "h:mm a"
        } else if self.dayDifference() <= 6 {
            dateFormatter.dateFormat = "E"
        } else if calendar.isDate(self, equalTo: Date(), toGranularity: .year) {
            dateFormatter.dateFormat = "MMM d"
        } else {
            dateFormatter.dateFormat = "MM/dd/yyyy"
        }

        return dateFormatter.string(from: self)
    }

    private func dayDifference() -> Int {
        let calendar = NSCalendar.current
        let from = calendar.startOfDay(for: self)
        let to = calendar.startOfDay(for: Date())

        let components = calendar.dateComponents([.day], from: from, to: to)

        return components.day ?? 0
    }

}
