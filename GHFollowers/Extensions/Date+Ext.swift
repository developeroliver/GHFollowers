//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by olivier geiger on 16/03/2024.
//

import UIKit

extension Date {
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month(.twoDigits).year())
    }
}

