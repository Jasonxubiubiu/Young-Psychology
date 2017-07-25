//
//  RegistionViewController.swift
//  Young心理
//
//  Created by Jason on 2017/7/24.
//  Copyright © 2017年 徐杰雄. All rights reserved.
//

import UIKit
import LeanCloud

class RegistionViewController: UIViewController {

    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Password1: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var TelephoneNumber: UITextField!
    
    @IBOutlet weak var VerificationNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func getCode(_ sender: Any) {
        LCUser.requestVerificationCode(mobilePhoneNumber: "18821786571")
        
    }
    @IBAction func register(_ sender: Any) {
//        保存用户名、密码、邮箱、电话
        let randomUser = LCUser()

        randomUser.username = LCString(UserName.text!)
        randomUser.password = LCString(Password.text!)
        randomUser.email = LCString(Email.text!)
        randomUser.mobilePhoneNumber = LCString(TelephoneNumber.text!)
        LCUser.verifyMobilePhoneNumber(TelephoneNumber.text!, verificationCode: VerificationNumber.text!){ result in
            switch result {
            case .success:
//                randomUser.signUp()
                break
            case .failure(let error):
                print(error)
            }
        }
        randomUser.signUp()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
