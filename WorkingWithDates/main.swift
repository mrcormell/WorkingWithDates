//
//  main.swift
//  WorkingWithDates
//
//  Created by David Cormell on 23/11/2021.
//

import Foundation

print("Hello, World!")

let now = Date() //creates a date / time with the current date and time


//Date Components
var components = DateComponents()
components.day = 5
components.month = 7
components.year = 1989

//build a date from date components
let birthDate = Calendar.current.date(from: components) ?? now

//access the numerical month from a date
let birthMonth = Calendar.current.dateComponents([.month], from: birthDate).month ?? 0
print(birthMonth)


//date formatter (from date to string)
let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .short //also .full, .medium, .long
let birthDateText = dateFormatter.string(from: birthDate)
print(birthDateText)

//custom format styles - avoid using dateFormat otherwise you lose localisation

let customDateFormatter = DateFormatter()
customDateFormatter.locale = Locale(identifier: "en_GB")
customDateFormatter.setLocalizedDateFormatFromTemplate("MMMM")
let dateNowText = customDateFormatter.string(from: now)
print(dateNowText)


//create Date from string
let inputDateString = "2021-11-23"
let isoDateFormatter = ISO8601DateFormatter()
isoDateFormatter.formatOptions = [.withFullDate] //just cares about the date, not time
let fixedDate = isoDateFormatter.date(from: inputDateString) ?? now
print(fixedDate)





