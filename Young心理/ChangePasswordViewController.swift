//
//  ChangePasswordViewController.swift
//  Young心理
//
//  Created by Jason on 2017/7/24.
//  Copyright © 2017年 徐杰雄. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var FirstPassword: UITextField!
    @IBOutlet weak var SecondPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func uploadNewPassword(_ sender: Any) {
        if(FirstPassword.text == SecondPassword.text){
            self.performSegue(withIdentifier: "changePasswordToLogin", sender: self)
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
