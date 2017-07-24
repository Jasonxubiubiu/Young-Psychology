//
//  VerifyPhoneNumberViewController.swift
//  Young心理
//
//  Created by Jason on 2017/7/24.
//  Copyright © 2017年 徐杰雄. All rights reserved.
//

import UIKit

class VerifyPhoneNumberViewController: UIViewController {

    @IBOutlet weak var VerificationCode: UITextField!//输入的验证码
    
    @IBOutlet weak var TelephoneNumber: UITextField!//输入的电话号码
    
    @IBOutlet weak var ErrorInfo: UILabel!
    
    var VertificationCode1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        VerificationCode.keyboardType = UIKeyboardType.numberPad
        VerificationCode.clearButtonMode = UITextFieldViewMode.whileEditing
        TelephoneNumber.keyboardType = UIKeyboardType.numberPad
        TelephoneNumber.clearButtonMode = UITextFieldViewMode.whileEditing
        
        
    }

    @IBAction func getVerificationCode(_ sender: Any) {
        //获取验证码
    }
    
    @IBAction func changePassword(_ sender: Any) {
        //校验验证码并且进入修改密码界面
        if(VerificationCode.text == VertificationCode1){
            self.performSegue(withIdentifier: "telephoneToChangePassword", sender: self)
        }
        else{
            ErrorInfo.text = "验证码错误"
        }
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
