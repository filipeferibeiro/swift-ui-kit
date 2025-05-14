//
//  String+Ext.swift
//  Reminder
//
//  Created by Filipe Fernandes on 13/05/25.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
