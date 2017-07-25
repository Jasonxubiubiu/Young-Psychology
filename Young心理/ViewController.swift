//
//  ViewController.swift
//  Young心理
//
//  Created by Jason on 2017/7/21.
//  Copyright © 2017年 徐杰雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func gotoUserInterface(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginAndRegistration", bundle: nil)
        let vc = storyboard.instantiateInitialViewController()
        self.navigationController?.pushViewController(vc!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

