//
//  ListAndDetailDetailViewController.swift
//  rx_study
//
//  Created by 村田卓朗 on 2017/08/10.
//  Copyright © 2017年 TakuroMurata. All rights reserved.
//

import UIKit
import RxSwift

class LADDetailViewController: UIViewController {
    
    var item: ListItem?
    let valueChangeSubject = PublishSubject<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index = item?.index!
        item?.index = 12345
        valueChangeSubject.onNext(index!)

        // Do any additional setup after loading the view.
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
