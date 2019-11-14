//
//  FormViewController.swift
//  003SubmitValueBack02
//
//  Created by 김민영 on 11/14/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import Foundation
import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onSubmit(_ sender: AnyObject) {
        
        //UIViewController return type
        let preVC = self.presentingViewController
        
        //return된 UIViewController를
        //ViewController로 casting
        guard let vc = preVC as? ViewController else {
            return
        }
        //value setting
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        //이전화면으로
        self.presentingViewController?.dismiss(animated: true)
        
        
    }
    
    
}
