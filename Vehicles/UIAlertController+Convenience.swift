//
//  UIAlertController+Convenience.swift
//  Vehicles
//
//  Created by Richard Reed on 1/28/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//

import UIKit

extension UIAlertController {
    class func alertControllerWithTitle(title:String, message:String) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        controller.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        return controller
    }
    
    class func alertControllerWithNumberInput(title title:String, message:String, buttonTitle:String, handler:(Int?)->Void) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        controller.addTextFieldWithConfigurationHandler { $0.keyboardType = .NumberPad }
        
        controller.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        controller.addAction(UIAlertAction(title: buttonTitle, style: .Default) { action in
            let textFields = controller.textFields!
            let value = Int(textFields[0].text!)
            handler(value)
            } )
        
        return controller
    }
}
