//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Filipe Fernandes on 14/05/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    var successResult: (() -> Void)?
    
    func doAuth(usernameLogin: String, passwordLogin: String) {
        Auth.auth().signIn(withEmail: usernameLogin, password: passwordLogin) { [weak self] authResult, error in
            if let error = error {
                print("Auth failed \(error)")
            } else {
                self?.successResult?()
            }
        }
    }
}
