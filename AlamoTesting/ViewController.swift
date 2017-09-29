//
//  ViewController.swift
//  AlamoTesting
//
//  Created by MK on 29/09/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let URL = "http://104.197.47.143/v1/api/user/register"
    
    let params: Parameters = [ "mobile_no": "03338222120",
                               "email": "mk@miletap.com",
                               "password": "12345678",
                               "login_provider": 1
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(URL, method: .post, parameters: params, encoding: JSONEncoding.default)
    }

}

