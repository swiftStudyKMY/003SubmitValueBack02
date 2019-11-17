//
//  ViewController.swift
//  003SubmitValueBack02
//
//  Created by 김민영 on 11/13/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //display
    
    @IBOutlet var resEmail: UILabel!
    
    @IBOutlet var resUpdate: UILabel!
    
    @IBOutlet var resInterval: UILabel!
    
    //전달 받을 변수
    
//    var paramEmail : String?
//
//    var paramUpdate : Bool?
//
//    var paramInterval : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NSLog("viewDidLoad call");
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear call");
        NSLog("viewWillAppear call");
//        if let email = paramEmail {
//            resEmail.text = email
//        }
//
//        if let update = paramUpdate {
//            resUpdate.text = update == true ? "자동갱신":"자동갱신안함"
//        }
//
//        if let interval = paramInterval {
//            resInterval.text = "\(Int(interval))분마다"
//        }
        
        /*
         * AppDelegate를 이용하여 데이터를 저장 가져오기
         */
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
            resEmail.text = email
        }

        if let update = ad?.paramUpdate {
            resUpdate.text = update == true ? "자동갱신":"자동갱신안함"
        }

        if let interval = ad?.paramInterval {
            resInterval.text = "\(Int(interval))분마다"
        }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear call");
    }

}

