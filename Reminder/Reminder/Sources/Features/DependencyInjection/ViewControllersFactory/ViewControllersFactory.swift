//
//  ViewControllersFactory.swift
//  Reminder
//
//  Created by Filipe Fernandes on 19/05/25.
//

import Foundation
import UIKit

final class ViewControllersFactory: ViewControllersFactoryProtocol {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController {
        let contentView = SplashView()
        let viewController = SplashViewController(contentView: contentView, flowDelegate: flowDelegate)
        
        return viewController
    }
    
    func makeLoginBottomSheetViewController(flowDelegate: LoginBottomSheetFlowDelegate) -> LoginBottomSheetViewController {
        let contentView = LoginBottomSheetView()
        let viewController = LoginBottomSheetViewController(contentView: contentView, flowDelegate: flowDelegate)
        
        return viewController
    }
}
