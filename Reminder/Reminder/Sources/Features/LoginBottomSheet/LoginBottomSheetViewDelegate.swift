//
//  LoginBottomSheetViewDelegate.swift
//  Reminder
//
//  Created by Filipe Fernandes on 13/05/25.
//

import Foundation
import UIKit

protocol LoginBottomSheetViewDelegate: AnyObject {
    func sendLoginData(user: String, password: String)
}
