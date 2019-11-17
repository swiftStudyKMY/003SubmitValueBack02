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
    
    @IBAction func onSubmit(_ sender: Any) {
        NSLog("onSubmit click")
        //UIViewController return type
        let preVC = self.presentingViewController
        
        //return된 UIViewController를
        //ViewController로 casting
        guard let vc = preVC as? ViewController else {
            return
        }
        
        print("\(email.text)")
        print("\(interval.value)")
        NSLog("1")
        //value setting
//        vc.paramEmail = self.email.text
//        vc.paramUpdate = self.isUpdate.isOn
//        vc.paramInterval = self.interval.value
        
       /*
        * AppDelegate를 이용하여 데이터를 저장 가져오기
        */
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        ad?.paramEmail = self.email.text
//        ad?.paramUpdate = self.isUpdate.isOn
//        ad?.paramInterval = self.interval.value
//
        /*
         * UserDefault를 이용하여 데이터를 저장 가져오기
         */
        let ud = UserDefaults.standard
        
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        
        //이전화면으로
        self.presentingViewController?.dismiss(animated: true)
        
        
    }
    
    
}
