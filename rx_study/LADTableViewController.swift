//
//  ListAndDetailTableViewController.swift
//  rx_study
//
//  Created by 村田卓朗 on 2017/08/10.
//  Copyright © 2017年 TakuroMurata. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LADTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: Variable<[ListItem]> = Variable<[ListItem]>([])
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<100 {
            let item = ListItem()
            item.index = i
            items.value.append(item)
        }
        
        items.asObservable().bind(to: tableView.rx.items(cellIdentifier: "Cell")) { _, item, cell -> Void in
            cell.textLabel?.text = String(describing: item.index)
        }.addDisposableTo(disposeBag)
        
        tableView.rx.itemSelected.subscribe(onNext: { indexPath in
            self.tableView.deselectRow(at: indexPath, animated: true)
            let sb = UIStoryboard(name: "LADDetailViewController", bundle: nil)
            let vc = sb.instantiateInitialViewController() as! LADDetailViewController
            vc.item = self.items.value[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }).addDisposableTo(disposeBag)
    }
}
