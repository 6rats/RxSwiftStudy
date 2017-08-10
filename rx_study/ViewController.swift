//
//  ViewController.swift
//  rx_study
//
//  Created by 村田卓朗 on 2017/08/10.
//  Copyright © 2017年 TakuroMurata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let sb = UIStoryboard(name: "LADTableViewController", bundle: nil)
        let vc = sb.instantiateInitialViewController() as! UINavigationController
        present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

