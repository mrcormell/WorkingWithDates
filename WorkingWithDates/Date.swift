//
//  Date.swift
//  WorkingWithDates
//
//  Created by David Cormell on 23/11/2021.
//

import Foundation

extension Date {
    static func dateOnlyFrom(_ dateText: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        return dateFormatter.date(from: dateText) ?? Date()
    }
}
